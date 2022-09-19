.class public Lcom/youku/vo/SokuClick;
.super Ljava/lang/Object;
.source "SokuClick.java"


# instance fields
.field public aaid:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field public ct:Ljava/lang/String;

.field public ds:Ljava/lang/String;

.field public filter:Ljava/lang/String;

.field public final guid:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public log:Ljava/lang/String;

.field public pg:Ljava/lang/String;

.field public pid:Ljava/lang/String;

.field public pname:Ljava/lang/String;

.field public pos:Ljava/lang/String;

.field public seq:Ljava/lang/String;

.field public final site:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public final ver:Ljava/lang/String;

.field public vid:Ljava/lang/String;

.field public vs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "21"

    iput-object v0, p0, Lcom/youku/vo/SokuClick;->log:Ljava/lang/String;

    .line 9
    const-string v0, "2"

    iput-object v0, p0, Lcom/youku/vo/SokuClick;->site:Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/tudou/android/Youku;->GUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/vo/SokuClick;->guid:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/tudou/android/Youku;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/vo/SokuClick;->ver:Ljava/lang/String;

    return-void
.end method
