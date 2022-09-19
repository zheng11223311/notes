.class public Lcom/youku/vo/MessageDetail$MessageItem;
.super Ljava/lang/Object;
.source "MessageDetail.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/MessageDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/youku/vo/MessageDetail$MessageItem;",
        ">;"
    }
.end annotation


# instance fields
.field public addTime:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public privatemsgid:Ljava/lang/String;

.field public sendState:Ljava/lang/String;

.field public senderId:Ljava/lang/String;

.field public sendernickname:Ljava/lang/String;

.field public senderpic:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/MessageDetail;

.field public updateTime_str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/MessageDetail;)V
    .locals 1

    .prologue
    .line 9
    iput-object p1, p0, Lcom/youku/vo/MessageDetail$MessageItem;->this$0:Lcom/youku/vo/MessageDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "success"

    iput-object v0, p0, Lcom/youku/vo/MessageDetail$MessageItem;->sendState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/youku/vo/MessageDetail$MessageItem;)I
    .locals 4
    .param p1, "another"    # Lcom/youku/vo/MessageDetail$MessageItem;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/vo/MessageDetail$MessageItem;->addTime:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p1, Lcom/youku/vo/MessageDetail$MessageItem;->addTime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 9
    check-cast p1, Lcom/youku/vo/MessageDetail$MessageItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/vo/MessageDetail$MessageItem;->compareTo(Lcom/youku/vo/MessageDetail$MessageItem;)I

    move-result v0

    return v0
.end method
