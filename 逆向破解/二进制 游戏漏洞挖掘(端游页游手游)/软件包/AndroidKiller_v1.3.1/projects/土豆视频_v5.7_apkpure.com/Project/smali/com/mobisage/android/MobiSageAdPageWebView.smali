.class Lcom/mobisage/android/MobiSageAdPageWebView;
.super Landroid/webkit/WebView;
.source "MobiSageAdPageWebView.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 13
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    sget v1, Lcom/mobisage/android/MobiSageDeviceInfo;->densityDpi:I

    .line 21
    .local v1, "screenDensity":I
    sget-object v2, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    .line 22
    .local v2, "zoomDensity":Landroid/webkit/WebSettings$ZoomDensity;
    sparse-switch v1, :sswitch_data_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 37
    return-void

    .line 17
    .end local v1    # "screenDensity":I
    .end local v2    # "zoomDensity":Landroid/webkit/WebSettings$ZoomDensity;
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_0

    .line 24
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    .restart local v1    # "screenDensity":I
    .restart local v2    # "zoomDensity":Landroid/webkit/WebSettings$ZoomDensity;
    :sswitch_0
    sget-object v2, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    .line 25
    goto :goto_1

    .line 27
    :sswitch_1
    sget-object v2, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    .line 28
    goto :goto_1

    .line 30
    :sswitch_2
    sget-object v2, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    .line 31
    goto :goto_1

    .line 22
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
    .end sparse-switch
.end method
