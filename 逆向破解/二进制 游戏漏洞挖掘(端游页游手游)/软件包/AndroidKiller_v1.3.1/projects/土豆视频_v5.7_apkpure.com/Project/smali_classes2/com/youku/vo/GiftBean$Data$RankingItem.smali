.class public Lcom/youku/vo/GiftBean$Data$RankingItem;
.super Ljava/lang/Object;
.source "GiftBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/GiftBean$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankingItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/vo/GiftBean$Data$RankingItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public nikName:Ljava/lang/String;

.field public picUrl:Ljava/lang/String;

.field public popularitys:Ljava/lang/String;

.field public prices:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/youku/vo/GiftBean$Data$RankingItem$1;

    invoke-direct {v0}, Lcom/youku/vo/GiftBean$Data$RankingItem$1;-><init>()V

    sput-object v0, Lcom/youku/vo/GiftBean$Data$RankingItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->userName:Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->userId:Ljava/lang/String;

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->nikName:Ljava/lang/String;

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->picUrl:Ljava/lang/String;

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->prices:Ljava/lang/String;

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->popularitys:Ljava/lang/String;

    .line 178
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->userName:Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->userId:Ljava/lang/String;

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->nikName:Ljava/lang/String;

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->picUrl:Ljava/lang/String;

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->prices:Ljava/lang/String;

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->popularitys:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->userName:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->userId:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->nikName:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->picUrl:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->prices:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->popularitys:Ljava/lang/String;

    .line 214
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/youku/vo/GiftBean$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/youku/vo/GiftBean$1;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/youku/vo/GiftBean$Data$RankingItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RankingItem{userName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nikName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->nikName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", picUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->picUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prices=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->prices:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", popularitys=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->popularitys:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->nikName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->picUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->prices:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/youku/vo/GiftBean$Data$RankingItem;->popularitys:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    return-void
.end method
