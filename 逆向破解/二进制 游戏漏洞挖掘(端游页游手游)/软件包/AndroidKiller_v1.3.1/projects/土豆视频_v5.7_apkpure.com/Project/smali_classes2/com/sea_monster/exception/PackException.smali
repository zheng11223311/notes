.class public Lcom/sea_monster/exception/PackException;
.super Lcom/sea_monster/exception/BaseException;
.source "PackException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/sea_monster/exception/BaseException;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sea_monster/exception/BaseException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "\u5305\u88c5\u51fa\u9519\uff01"

    return-object v0
.end method
