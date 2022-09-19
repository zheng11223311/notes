.class public Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBrightnessSetting;
.super Ljava/lang/Object;
.source "FullScreenBrightnessSetting.java"


# instance fields
.field private brightnessBar:Landroid/widget/SeekBar;

.field containerView:Landroid/view/View;

.field context:Landroid/app/Activity;

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "containerView"    # Landroid/view/View;
    .param p3, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBrightnessSetting;->containerView:Landroid/view/View;

    .line 32
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBrightnessSetting;->context:Landroid/app/Activity;

    .line 33
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBrightnessSetting;->sp:Landroid/content/SharedPreferences;

    .line 34
    return-void
.end method

.method private setBrightness(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "tmpInt"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBrightnessSetting;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 54
    .local v1, "mode":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 55
    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBrightnessSetting;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/tudou/ui/activity/DetailActivity;->mScreenBrightCur:I

    .line 69
    return-void
.end method


# virtual methods
.method public brightnessSetting()V
    .locals 6

    .prologue
    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, "value":I
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBrightnessSetting;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 39
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBrightnessSetting;->sp:Landroid/content/SharedPreferences;

    const-string v4, "bright"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 40
    const-string v3, "lelouch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    if-nez v2, :cond_0

    .line 43
    :try_start_0
    const-string v3, "screen_brightness"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 50
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBrightnessSetting;->setBrightness(Ljava/lang/Integer;)V

    goto :goto_0
.end method
