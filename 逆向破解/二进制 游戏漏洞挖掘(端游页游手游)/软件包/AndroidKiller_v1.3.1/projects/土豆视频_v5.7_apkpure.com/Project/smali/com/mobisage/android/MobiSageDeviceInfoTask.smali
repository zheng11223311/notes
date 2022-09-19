.class Lcom/mobisage/android/MobiSageDeviceInfoTask;
.super Lcom/mobisage/android/MobiSageTask;
.source "MobiSageDeviceInfoTask.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageTask;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobisage/android/MobiSageDeviceInfoTask;->isRate:Z

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobisage/android/MobiSageDeviceInfoTask;->periodTime:J

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 19
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    invoke-static {}, Lcom/mobisage/android/MobiSageTrackModule;->getInstance()Lcom/mobisage/android/MobiSageTrackModule;

    move-result-object v1

    const/16 v2, 0x7d7

    invoke-virtual {v1, v2, v0}, Lcom/mobisage/android/MobiSageTrackModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V

    .line 20
    return-void
.end method
