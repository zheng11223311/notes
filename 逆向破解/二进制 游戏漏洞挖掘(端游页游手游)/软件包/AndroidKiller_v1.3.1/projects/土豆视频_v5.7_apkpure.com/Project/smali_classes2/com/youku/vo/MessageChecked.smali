.class public Lcom/youku/vo/MessageChecked;
.super Ljava/lang/Object;
.source "MessageChecked.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/MessageChecked$CheckMsg;
    }
.end annotation


# instance fields
.field public channel:Ljava/lang/String;

.field public createTime:Ljava/lang/String;

.field public destUid:Ljava/lang/String;

.field public isReaded:Z

.field public msg:Lcom/youku/vo/MessageChecked$CheckMsg;

.field public msgId:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/vo/MessageChecked;->isReaded:Z

    .line 20
    new-instance v0, Lcom/youku/vo/MessageChecked$CheckMsg;

    invoke-direct {v0, p0}, Lcom/youku/vo/MessageChecked$CheckMsg;-><init>(Lcom/youku/vo/MessageChecked;)V

    iput-object v0, p0, Lcom/youku/vo/MessageChecked;->msg:Lcom/youku/vo/MessageChecked$CheckMsg;

    .line 21
    return-void
.end method
