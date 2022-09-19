.class public abstract Lcom/mobisage/android/MobiSageTask;
.super Ljava/lang/Object;
.source "MobiSageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public delayTime:J

.field public isRate:Z

.field public periodTime:J

.field public taskUUID:Ljava/util/UUID;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/mobisage/android/MobiSageTask;->taskUUID:Ljava/util/UUID;

    .line 17
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method
