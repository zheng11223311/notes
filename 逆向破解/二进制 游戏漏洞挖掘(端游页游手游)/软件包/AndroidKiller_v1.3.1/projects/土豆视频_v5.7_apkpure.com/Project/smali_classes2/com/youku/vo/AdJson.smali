.class public Lcom/youku/vo/AdJson;
.super Ljava/lang/Object;
.source "AdJson.java"


# instance fields
.field public browser_type:Ljava/lang/String;

.field public shouldOverride:Z

.field public urlStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "1"

    iput-object v0, p0, Lcom/youku/vo/AdJson;->browser_type:Ljava/lang/String;

    return-void
.end method
