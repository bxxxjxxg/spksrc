// Namespace
Ext.ns("SYNOCOMMUNITY.BlankWindow");

// Const
SYNOCOMMUNITY.BlankWindow.DEFAULT_HEIGHT = 300;
SYNOCOMMUNITY.BlankWindow.MAIN_WIDTH = 800;
SYNOCOMMUNITY.BlankWindow.LIST_WIDTH = 210;

// Application
SYNOCOMMUNITY.BlankWindow.AppInstance = Ext.extend(SYNO.SDS.AppInstance, {
    appWindowName: "SYNOCOMMUNITY.BlankWindow.AppWindow"
});

// Main window
SYNOCOMMUNITY.BlankWindow.AppWindow = Ext.extend(SYNO.SDS.AppWindow, {
    constructor: function (config) {
        this.appInstance = config.appInstance;
        config = Ext.apply({
            resizable: true,
            maximizable: true,
            minimizable: true,
            width: SYNOCOMMUNITY.BlankWindow.MAIN_WIDTH,
            height: SYNOCOMMUNITY.BlankWindow.DEFAULT_HEIGHT,
            layout: "fit",
            border: false,
            cls: "synocommunity-debianchroot",
            items: []
        }, config);
        SYNOCOMMUNITY.BlankWindow.AppWindow.superclass.constructor.call(this, config);
    }
});
