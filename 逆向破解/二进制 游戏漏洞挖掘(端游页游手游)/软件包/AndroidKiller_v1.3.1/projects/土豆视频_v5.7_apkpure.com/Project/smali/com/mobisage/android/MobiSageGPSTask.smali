.class Lcom/mobisage/android/MobiSageGPSTask;
.super Lcom/mobisage/android/MobiSageTask;
.source "MobiSageGPSTask.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageTask;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobisage/android/MobiSageGPSTask;->isRate:Z

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobisage/android/MobiSageGPSTask;->periodTime:J

    .line 15
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/mobisage/android/MobiSageGPSModule;->getInstance()Lcom/mobisage/android/MobiSageGPSModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageGPSModule;->updateGPSLocation()V

    .line 20
    return-void
.end method
