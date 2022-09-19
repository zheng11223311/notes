.class Lcom/tudou/upload/SliceInfo;
.super Ljava/lang/Object;
.source "SliceInfo.java"


# static fields
.field public static final TASK_STATUS_FINISHED:I = 0x2

.field public static final TASK_STATUS_INITIAL:I = 0x0

.field public static final TASK_STATUS_UPLOADING:I = 0x1

.field public static final TASK_STATUS_WRITE_ERROR:I = 0x3

.field public static final TASK_STATUS_WRITING_TO_DISK:I = 0x4


# instance fields
.field public finished:Z

.field public length:J

.field public offset:J

.field public slice_task_id:I

.field public standardLength:J

.field public status:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/upload/SliceInfo;->finished:Z

    return-void
.end method
