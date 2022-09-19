.class public Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;
.super Ljava/lang/Object;
.source "VoteOptionsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoteOptionsItem"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private id:I

.field private num:I

.field private percent:Ljava/lang/String;

.field private quantity:I

.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->this$0:Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->id:I

    return v0
.end method

.method public getNum()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->num:I

    return v0
.end method

.method public getPercent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->percent:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->quantity:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->description:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->id:I

    .line 77
    return-void
.end method

.method public setNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->num:I

    .line 85
    return-void
.end method

.method public setPercent(Ljava/lang/String;)V
    .locals 0
    .param p1, "percent"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->percent:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setQuantity(I)V
    .locals 0
    .param p1, "quantity"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->quantity:I

    .line 101
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->url:Ljava/lang/String;

    .line 109
    return-void
.end method
