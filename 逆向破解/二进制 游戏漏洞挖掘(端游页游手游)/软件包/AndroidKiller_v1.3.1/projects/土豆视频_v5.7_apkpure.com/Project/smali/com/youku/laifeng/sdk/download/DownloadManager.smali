.class public interface abstract Lcom/youku/laifeng/sdk/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field public static final ERROR_CONNECTION_TIMEOUT_AFTER_RETRIES:I = 0x3f1

.field public static final ERROR_DOWNLOAD_CANCELLED:I = 0x3f0

.field public static final ERROR_DOWNLOAD_SIZE_UNKNOWN:I = 0x3ee

.field public static final ERROR_FILE_ERROR:I = 0x3e9

.field public static final ERROR_HTTP_DATA_ERROR:I = 0x3ec

.field public static final ERROR_MALFORMED_URI:I = 0x3ef

.field public static final ERROR_TOO_MANY_REDIRECTS:I = 0x3ed

.field public static final ERROR_UNHANDLED_HTTP_CODE:I = 0x3ea

.field public static final STATUS_CONNECTING:I = 0x66

.field public static final STATUS_FAILED:I = 0x69

.field public static final STATUS_NOT_FOUND:I = 0x6a

.field public static final STATUS_PENDING:I = 0x64

.field public static final STATUS_RETRYING:I = 0x6b

.field public static final STATUS_RUNNING:I = 0x67

.field public static final STATUS_STARTED:I = 0x65

.field public static final STATUS_SUCCESSFUL:I = 0x68


# virtual methods
.method public abstract add(Lcom/youku/laifeng/sdk/download/DownloadRequest;)I
.end method

.method public abstract cancel(I)I
.end method

.method public abstract cancelAll()V
.end method

.method public abstract getCurrentQueue()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/youku/laifeng/sdk/download/DownloadRequest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentQueueSize()I
.end method

.method public abstract query(I)I
.end method

.method public abstract release()V
.end method
