.class final Lcom/decapi/DecAPI$1;
.super Ljava/lang/Object;
.source "DecAPI.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/decapi/DecAPI;->getEncreyptStringInSingleThread(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$flag:I

.field final synthetic val$is:Ljava/io/InputStream;

.field final synthetic val$plaintxt:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/decapi/DecAPI$1;->val$is:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/decapi/DecAPI$1;->val$plaintxt:Ljava/lang/String;

    iput p3, p0, Lcom/decapi/DecAPI$1;->val$flag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/decapi/DecAPI$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/decapi/DecAPI$1;->val$is:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/decapi/DecAPI$1;->val$plaintxt:Ljava/lang/String;

    iget v2, p0, Lcom/decapi/DecAPI$1;->val$flag:I

    invoke-static {v0, v1, v2}, Lcom/decapi/DecAPI;->doEnc(Ljava/io/InputStream;Ljava/lang/String;I)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
