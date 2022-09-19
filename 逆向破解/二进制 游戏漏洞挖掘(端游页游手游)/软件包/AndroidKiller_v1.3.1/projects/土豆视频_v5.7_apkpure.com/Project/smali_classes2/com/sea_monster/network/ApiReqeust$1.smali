.class Lcom/sea_monster/network/ApiReqeust$1;
.super Lcom/sea_monster/network/AbstractHttpRequest;
.source "ApiReqeust.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sea_monster/network/ApiReqeust;->obtainRequest(Lcom/sea_monster/network/parser/IEntityParser;Lcom/sea_monster/network/AuthType;Z)Lcom/sea_monster/network/AbstractHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sea_monster/network/AbstractHttpRequest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sea_monster/network/ApiReqeust;

.field final synthetic val$consumer:Lcom/sea_monster/network/AuthType;

.field final synthetic val$request:Lcom/sea_monster/network/ApiReqeust;


# direct methods
.method constructor <init>(Lcom/sea_monster/network/ApiReqeust;ILjava/net/URI;Ljava/util/List;IZLcom/sea_monster/network/AuthType;Lcom/sea_monster/network/ApiReqeust;)V
    .locals 6
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/net/URI;
    .param p5, "x3"    # I
    .param p6, "x4"    # Z

    .prologue
    .line 171
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust$1;, "Lcom/sea_monster/network/ApiReqeust.1;"
    .local p4, "x2":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iput-object p1, p0, Lcom/sea_monster/network/ApiReqeust$1;->this$0:Lcom/sea_monster/network/ApiReqeust;

    iput-object p7, p0, Lcom/sea_monster/network/ApiReqeust$1;->val$consumer:Lcom/sea_monster/network/AuthType;

    iput-object p8, p0, Lcom/sea_monster/network/ApiReqeust$1;->val$request:Lcom/sea_monster/network/ApiReqeust;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sea_monster/network/AbstractHttpRequest;-><init>(ILjava/net/URI;Ljava/util/List;IZ)V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/Serializable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust$1;, "Lcom/sea_monster/network/ApiReqeust.1;"
    .local p1, "obj":Ljava/io/Serializable;, "TT;"
    iget-object v0, p0, Lcom/sea_monster/network/ApiReqeust$1;->val$request:Lcom/sea_monster/network/ApiReqeust;

    invoke-virtual {v0, p0, p1}, Lcom/sea_monster/network/ApiReqeust;->onComplete(Lcom/sea_monster/network/AbstractHttpRequest;Ljava/lang/Object;)V

    .line 193
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 171
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust$1;, "Lcom/sea_monster/network/ApiReqeust.1;"
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sea_monster/network/ApiReqeust$1;->onComplete(Ljava/io/Serializable;)V

    return-void
.end method

.method public onFailure(Lcom/sea_monster/exception/BaseException;)V
    .locals 1
    .param p1, "e"    # Lcom/sea_monster/exception/BaseException;

    .prologue
    .line 197
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust$1;, "Lcom/sea_monster/network/ApiReqeust.1;"
    iget-object v0, p0, Lcom/sea_monster/network/ApiReqeust$1;->val$request:Lcom/sea_monster/network/ApiReqeust;

    invoke-virtual {v0, p0, p1}, Lcom/sea_monster/network/ApiReqeust;->onFailure(Lcom/sea_monster/network/AbstractHttpRequest;Lcom/sea_monster/exception/BaseException;)V

    .line 198
    return-void
.end method

.method public processReadyRequest(Lorg/apache/http/HttpRequest;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 176
    .local p0, "this":Lcom/sea_monster/network/ApiReqeust$1;, "Lcom/sea_monster/network/ApiReqeust.1;"
    iget-object v1, p0, Lcom/sea_monster/network/ApiReqeust$1;->val$consumer:Lcom/sea_monster/network/AuthType;

    if-eqz v1, :cond_0

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/sea_monster/network/ApiReqeust$1;->val$consumer:Lcom/sea_monster/network/AuthType;

    monitor-enter v2
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    .line 179
    :try_start_1
    iget-object v1, p0, Lcom/sea_monster/network/ApiReqeust$1;->val$consumer:Lcom/sea_monster/network/AuthType;

    iget-object v3, p0, Lcom/sea_monster/network/ApiReqeust$1;->this$0:Lcom/sea_monster/network/ApiReqeust;

    invoke-static {v3}, Lcom/sea_monster/network/ApiReqeust;->access$000(Lcom/sea_monster/network/ApiReqeust;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/sea_monster/network/AuthType;->signRequest(Lorg/apache/http/HttpRequest;Ljava/util/List;)V

    .line 180
    monitor-exit v2

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 186
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method
