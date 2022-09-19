.class public Lcom/youku/vo/TudouSwitchesBean$Switches;
.super Ljava/lang/Object;
.source "TudouSwitchesBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/TudouSwitchesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Switches"
.end annotation


# instance fields
.field public game_switch:I

.field public laifeng_auto_download:I

.field public player_decoding_by_hardware_switch:I

.field public record_video:I

.field public sensitive_word:I

.field final synthetic this$0:Lcom/youku/vo/TudouSwitchesBean;

.field public tudou_app_store:I

.field public tudou_audio_background_play:I

.field public tudou_bili:I

.field public tudou_qihu:I

.field public tudou_qq_account:I

.field public tudou_sandbox:I

.field public tudou_scan_switch:I

.field public tudou_subscription_guide:I

.field public tudou_taobao_account:I

.field public tudou_video_default_resolution:I

.field public tudou_weibo_account:I

.field public watch_and_chat:I


# direct methods
.method public constructor <init>(Lcom/youku/vo/TudouSwitchesBean;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    iput-object p1, p0, Lcom/youku/vo/TudouSwitchesBean$Switches;->this$0:Lcom/youku/vo/TudouSwitchesBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/youku/vo/TudouSwitchesBean$Switches;->watch_and_chat:I

    .line 34
    iput v0, p0, Lcom/youku/vo/TudouSwitchesBean$Switches;->sensitive_word:I

    return-void
.end method
