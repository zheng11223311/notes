.class public abstract Lcom/youku/gamecenter/GameDebugActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "GameDebugActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GameCenter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSimpleClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logs(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "GameCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDebugActivity;->getSimpleClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 22
    const-string v0, "onConfigurationChanged"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDebugActivity;->logs(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const-string v0, "onCreate"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDebugActivity;->logs(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 52
    const-string v0, "onDestroy"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDebugActivity;->logs(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onLowMemory()V

    .line 58
    const-string v0, "onLowMemory"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDebugActivity;->logs(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 40
    const-string v0, "onPause"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDebugActivity;->logs(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 34
    const-string v0, "onResume"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDebugActivity;->logs(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 28
    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDebugActivity;->logs(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 46
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDebugActivity;->logs(Ljava/lang/String;)V

    .line 47
    return-void
.end method
