.class public Lcom/youku/laifeng/libcuteroom/utils/LaifengReport;
.super Ljava/lang/Object;
.source "LaifengReport.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LaifengReport"

.field private static lockResume:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengReport;->lockResume:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengReport;->lockResume:Ljava/lang/Object;

    return-object v0
.end method

.method public static reportActivityResume()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/youku/laifeng/libcuteroom/utils/LaifengReport$1;

    invoke-direct {v1}, Lcom/youku/laifeng/libcuteroom/utils/LaifengReport$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    return-void
.end method
