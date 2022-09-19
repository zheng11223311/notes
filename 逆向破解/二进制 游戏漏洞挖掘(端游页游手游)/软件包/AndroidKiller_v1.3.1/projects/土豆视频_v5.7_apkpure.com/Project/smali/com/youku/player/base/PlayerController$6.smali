.class Lcom/youku/player/base/PlayerController$6;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/PlayerController;->port2Land()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/PlayerController;


# direct methods
.method constructor <init>(Lcom/youku/player/base/PlayerController;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/youku/player/base/PlayerController$6;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1117
    sget-object v0, Lcom/youku/player/LogTag;->TAG_ORIENTATION:Ljava/lang/String;

    const-string v1, "port2Land"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const-string/jumbo v0, "video_lock"

    invoke-static {v0, v2}, Lcom/youku/player/util/PlayerPreference;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController$6;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1125
    :goto_0
    return-void

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$6;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
