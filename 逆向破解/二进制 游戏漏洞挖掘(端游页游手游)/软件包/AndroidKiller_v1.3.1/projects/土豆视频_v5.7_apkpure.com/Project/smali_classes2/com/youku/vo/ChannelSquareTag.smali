.class public Lcom/youku/vo/ChannelSquareTag;
.super Ljava/lang/Object;
.source "ChannelSquareTag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/vo/ChannelSquareTag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public expression:Lcom/youku/vo/Expression;

.field public id:I

.field public picUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/youku/vo/ChannelSquareTag$1;

    invoke-direct {v0}, Lcom/youku/vo/ChannelSquareTag$1;-><init>()V

    sput-object v0, Lcom/youku/vo/ChannelSquareTag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/vo/ChannelSquareTag;->id:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/ChannelSquareTag;->picUrl:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/ChannelSquareTag;->title:Ljava/lang/String;

    .line 20
    const-class v0, Lcom/youku/vo/Expression;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/Expression;

    iput-object v0, p0, Lcom/youku/vo/ChannelSquareTag;->expression:Lcom/youku/vo/Expression;

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getFc()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/vo/ChannelSquareTag;->expression:Lcom/youku/vo/Expression;

    iget-object v0, v0, Lcom/youku/vo/Expression;->queryCondition:Lcom/youku/vo/QueryCondition;

    iget v0, v0, Lcom/youku/vo/QueryCondition;->fc:I

    return v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/youku/vo/ChannelSquareTag;->expression:Lcom/youku/vo/Expression;

    iget-object v0, v0, Lcom/youku/vo/Expression;->queryCondition:Lcom/youku/vo/QueryCondition;

    iget v0, v0, Lcom/youku/vo/QueryCondition;->gender:I

    return v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/vo/ChannelSquareTag;->expression:Lcom/youku/vo/Expression;

    iget-object v0, v0, Lcom/youku/vo/Expression;->queryCondition:Lcom/youku/vo/QueryCondition;

    iget-object v0, v0, Lcom/youku/vo/QueryCondition;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderByField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/vo/ChannelSquareTag;->expression:Lcom/youku/vo/Expression;

    iget-object v0, v0, Lcom/youku/vo/Expression;->orderByField:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderByType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/youku/vo/ChannelSquareTag;->expression:Lcom/youku/vo/Expression;

    iget-object v0, v0, Lcom/youku/vo/Expression;->orderByType:Ljava/lang/String;

    return-object v0
.end method

.method public getQualityUser()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/youku/vo/ChannelSquareTag;->expression:Lcom/youku/vo/Expression;

    iget-object v0, v0, Lcom/youku/vo/Expression;->queryCondition:Lcom/youku/vo/QueryCondition;

    iget v0, v0, Lcom/youku/vo/QueryCondition;->qualityUser:I

    return v0
.end method

.method public getQueryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/vo/ChannelSquareTag;->expression:Lcom/youku/vo/Expression;

    iget-object v0, v0, Lcom/youku/vo/Expression;->queryType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/youku/vo/ChannelSquareTag;->expression:Lcom/youku/vo/Expression;

    iget-object v0, v0, Lcom/youku/vo/Expression;->queryCondition:Lcom/youku/vo/QueryCondition;

    iget-object v0, v0, Lcom/youku/vo/QueryCondition;->userType:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 76
    iget v0, p0, Lcom/youku/vo/ChannelSquareTag;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/youku/vo/ChannelSquareTag;->picUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/youku/vo/ChannelSquareTag;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/youku/vo/ChannelSquareTag;->expression:Lcom/youku/vo/Expression;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    return-void
.end method
