#include <amxmodx>
#include <reapi>

#define PLUGIN "Flashlight Battery Configuration"
#define VERSION "1.0"
#define AUTHOR "Oli Desu"

#define FLASH_DRAIN_TIME        1.2
#define FLASH_CHARGE_TIME       0.2


new Float: g_fDrain, Float: g_fCharge, g_iFlashBattery[MAX_PLAYERS + 1]


public plugin_init()
{
    register_plugin(PLUGIN, VERSION, AUTHOR)
    
    RegisterHookChain(RG_CBasePlayer_Spawn, "CBasePlayer_Spawn_Post", true)
    RegisterHookChain(RG_CBasePlayer_UpdateClientData, "CBasePlayer_UpdateClientData_Post", true)
    
    bind_pcvar_float(register_cvar("n21_flashlight_drain", "1.2"), g_fDrain) 
    bind_pcvar_float(register_cvar("n21_flashlight_charge", "0.2"), g_fCharge)
}

public CBasePlayer_Spawn_Post(id)
{
    if (is_user_alive(id))
        g_iFlashBattery[id] = get_member(id, m_iFlashBattery)
}

public CBasePlayer_UpdateClientData_Post(id)
{
    static iFlashBattery
    iFlashBattery = get_member(id, m_iFlashBattery)
    
    if (g_iFlashBattery[id] > iFlashBattery)
    {
        set_member(id, m_flFlashLightTime,
            Float:get_member(id, m_flFlashLightTime) - FLASH_DRAIN_TIME + g_fDrain)
    }
    else if (g_iFlashBattery[id] < iFlashBattery)
    {
        set_member(id, m_flFlashLightTime,
            Float:get_member(id, m_flFlashLightTime) - FLASH_CHARGE_TIME + g_fCharge)
    }
        
    g_iFlashBattery[id] = iFlashBattery
}
