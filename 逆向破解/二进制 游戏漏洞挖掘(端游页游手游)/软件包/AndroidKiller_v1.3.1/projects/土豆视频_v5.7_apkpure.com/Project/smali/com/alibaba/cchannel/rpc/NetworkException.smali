.class public Lcom/alibaba/cchannel/rpc/NetworkException;
.super Ljava/lang/Exception;
.source "NetworkException.java"


# instance fields
.field private errorMessage:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/cchannel/rpc/NetworkException;-><init>([B)V

    .line 12
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "errorMessage"    # [B

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alibaba/cchannel/rpc/NetworkException;->errorMessage:[B

    .line 16
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 25
    iget-object v1, p0, Lcom/alibaba/cchannel/rpc/NetworkException;->errorMessage:[B

    if-nez v1, :cond_0

    .line 27
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1

    .line 32
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/cchannel/rpc/NetworkException;->errorMessage:[B

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getErrorRawMessage()[B
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/NetworkException;->errorMessage:[B

    return-object v0
.end method
