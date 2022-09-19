.class public Lcom/youku/player/unicom/ChinaUnicomVideoInfo;
.super Ljava/lang/Object;
.source "ChinaUnicomVideoInfo.java"


# instance fields
.field private cancelTime:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private orderTime:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private status:I

.field private type:I

.field private vedioId:Ljava/lang/String;

.field private vedioImage:Ljava/lang/String;

.field private vedioName:Ljava/lang/String;

.field private vedioTag:Ljava/lang/String;

.field private vedioUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCancelTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->cancelTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->orderTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->status:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->type:I

    return v0
.end method

.method public getVedioId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->vedioId:Ljava/lang/String;

    return-object v0
.end method

.method public getVedioImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->vedioImage:Ljava/lang/String;

    return-object v0
.end method

.method public getVedioName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->vedioName:Ljava/lang/String;

    return-object v0
.end method

.method public getVedioTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->vedioTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVedioUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->vedioUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCancelTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "cancelTime"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->cancelTime:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->endTime:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setOrderTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderTime"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->orderTime:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->price:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->productName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->status:I

    .line 59
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->type:I

    .line 67
    return-void
.end method

.method public setVedioId(Ljava/lang/String;)V
    .locals 0
    .param p1, "vedioId"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->vedioId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setVedioImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "vedioImage"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->vedioImage:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setVedioName(Ljava/lang/String;)V
    .locals 0
    .param p1, "vedioName"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->vedioName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setVedioTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "vedioTag"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->vedioTag:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setVedioUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "vedioUrl"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->vedioUrl:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WoVedioInfo{cancelTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->cancelTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->orderTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vedioId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->vedioId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vedioName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->vedioName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vedioTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->vedioTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vedioUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->vedioUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vedioImage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->vedioImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomVideoInfo;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
