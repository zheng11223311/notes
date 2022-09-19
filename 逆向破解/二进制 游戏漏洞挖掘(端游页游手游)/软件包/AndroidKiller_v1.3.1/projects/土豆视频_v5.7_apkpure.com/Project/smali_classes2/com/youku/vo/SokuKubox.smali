.class public Lcom/youku/vo/SokuKubox;
.super Ljava/lang/Object;
.source "SokuKubox.java"


# instance fields
.field public aaid:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public ki:Ljava/lang/String;

.field public log:Ljava/lang/String;

.field public ok:Ljava/lang/String;

.field public pos:Ljava/lang/String;

.field public final site:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "31"

    iput-object v0, p0, Lcom/youku/vo/SokuKubox;->log:Ljava/lang/String;

    .line 8
    const-string v0, "2"

    iput-object v0, p0, Lcom/youku/vo/SokuKubox;->site:Ljava/lang/String;

    return-void
.end method
