.class public Lcom/youku/vo/VIPCardResult;
.super Ljava/lang/Object;
.source "VIPCardResult.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public error:I

.field public msg:Ljava/lang/String;

.field public original_error:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/VIPCardResult;->desc:Ljava/lang/String;

    return-void
.end method
