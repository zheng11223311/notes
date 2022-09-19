.class public Lcom/youku/vo/Room;
.super Ljava/lang/Object;
.source "Room.java"


# instance fields
.field public freeS:Ljava/lang/String;

.field public freey:Ljava/lang/String;

.field public mProgress:I

.field public total:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/Room;->freeS:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/Room;->freey:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/Room;->total:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/vo/Room;->mProgress:I

    return-void
.end method
