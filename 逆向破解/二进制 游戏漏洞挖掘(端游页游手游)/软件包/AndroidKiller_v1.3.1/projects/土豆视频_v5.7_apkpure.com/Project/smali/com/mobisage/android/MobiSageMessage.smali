.class public abstract Lcom/mobisage/android/MobiSageMessage;
.super Ljava/lang/Object;
.source "MobiSageMessage.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageMessage;


# static fields
.field static final HTTP_REQ_MESSAGE:I = 0x1

.field static final HTTP_RES_MESSAGE:I = 0x2

.field static final HTTP_SUSPEND_MESSAGE:I = 0x0

.field static final HTTP_TRACK_MESSAGE:I = 0x3


# instance fields
.field public callback:Lcom/mobisage/android/IMobiSageMessageCallback;

.field messageType:I

.field public messageUUID:Ljava/util/UUID;

.field public result:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageMessage;->result:Landroid/os/Bundle;

    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/mobisage/android/MobiSageMessage;->messageUUID:Ljava/util/UUID;

    .line 32
    return-void
.end method


# virtual methods
.method public createHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public createMessageRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 37
    iget-object v0, p0, Lcom/mobisage/android/MobiSageMessage;->result:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 38
    return-void
.end method
