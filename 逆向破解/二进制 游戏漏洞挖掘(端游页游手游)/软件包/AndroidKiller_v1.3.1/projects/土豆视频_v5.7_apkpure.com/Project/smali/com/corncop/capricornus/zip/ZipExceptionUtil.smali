.class Lcom/corncop/capricornus/zip/ZipExceptionUtil;
.super Ljava/lang/Object;
.source "ZipExceptionUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;
    .locals 1
    .param p0, "e"    # Ljava/io/IOException;

    .prologue
    .line 11
    new-instance v0, Lcom/corncop/capricornus/zip/ZipException;

    invoke-direct {v0, p0}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
