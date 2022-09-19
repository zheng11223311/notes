.class public Lcom/sea_monster/exception/HttpException;
.super Lcom/sea_monster/exception/BaseException;
.source "HttpException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/sea_monster/exception/BaseException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/sea_monster/exception/BaseException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u51fa\u73b0\u5f02\u5e38"

    return-object v0
.end method
