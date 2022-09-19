.class public Lcom/youku/vo/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/vo/Channel;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_ITEM:I = 0x64


# instance fields
.field public Pagesize:I

.field public bgColor:I

.field public channelCid:Ljava/lang/String;

.field public channelName:Ljava/lang/String;

.field public channelType:Ljava/lang/String;

.field public clickCount:I

.field public color:I

.field public icon:Ljava/lang/String;

.field public isFav:Z

.field public isFavInt:I

.field public isFetching:Z

.field public nowPage:I

.field public sub_title:Ljava/lang/String;

.field public totalVideo:I

.field public type:I

.field public url:Ljava/lang/String;

.field public videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public videotype:Lcom/tudou/android/Youku$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/youku/vo/Channel$1;

    invoke-direct {v0}, Lcom/youku/vo/Channel$1;-><init>()V

    sput-object v0, Lcom/youku/vo/Channel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/vo/Channel;->totalVideo:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/vo/Channel;->nowPage:I

    .line 49
    const/16 v0, 0x1e

    iput v0, p0, Lcom/youku/vo/Channel;->Pagesize:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/Channel;->videoList:Ljava/util/List;

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v2, -0x1

    iput v2, p0, Lcom/youku/vo/Channel;->totalVideo:I

    .line 43
    iput v0, p0, Lcom/youku/vo/Channel;->nowPage:I

    .line 49
    const/16 v2, 0x1e

    iput v2, p0, Lcom/youku/vo/Channel;->Pagesize:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/Channel;->channelName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/Channel;->channelType:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/Channel;->channelCid:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/youku/vo/Channel;->totalVideo:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/youku/vo/Channel;->nowPage:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/Channel;->url:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/youku/vo/Channel;->Pagesize:I

    .line 100
    const-class v2, Lcom/youku/vo/VideoInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/Channel;->videoList:Ljava/util/List;

    .line 101
    iput-boolean v1, p0, Lcom/youku/vo/Channel;->isFetching:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/Channel;->icon:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/youku/vo/Channel;->isFavInt:I

    .line 104
    iget v2, p0, Lcom/youku/vo/Channel;->isFavInt:I

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/youku/vo/Channel;->isFav:Z

    .line 106
    return-void

    :cond_0
    move v0, v1

    .line 104
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/vo/Channel;->totalVideo:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/vo/Channel;->nowPage:I

    .line 49
    const/16 v0, 0x1e

    iput v0, p0, Lcom/youku/vo/Channel;->Pagesize:I

    .line 76
    iput-object p1, p0, Lcom/youku/vo/Channel;->channelName:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/Channel;->videoList:Ljava/util/List;

    .line 79
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public isgetnextPage()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 110
    iget v1, p0, Lcom/youku/vo/Channel;->totalVideo:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    iget v1, p0, Lcom/youku/vo/Channel;->totalVideo:I

    iget v2, p0, Lcom/youku/vo/Channel;->Pagesize:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/youku/vo/Channel;->nowPage:I

    if-gt v1, v2, :cond_0

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextPage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/youku/vo/Channel;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/vo/Channel;->nowPage:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/youku/vo/Channel;->nowPage:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "pageUrl":Ljava/lang/String;
    return-object v0
.end method

.method public nowPage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/youku/vo/Channel;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/vo/Channel;->nowPage:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "pageUrl":Ljava/lang/String;
    return-object v0
.end method

.method public rollBackPage()V
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/youku/vo/Channel;->nowPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/youku/vo/Channel;->nowPage:I

    .line 135
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/youku/vo/Channel;->channelType:Ljava/lang/String;

    .line 32
    const-string v0, "video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iput-object v0, p0, Lcom/youku/vo/Channel;->videotype:Lcom/tudou/android/Youku$Type;

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    sget-object v0, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iput-object v0, p0, Lcom/youku/vo/Channel;->videotype:Lcom/tudou/android/Youku$Type;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/youku/vo/Channel;->channelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/youku/vo/Channel;->channelType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/youku/vo/Channel;->channelCid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget v0, p0, Lcom/youku/vo/Channel;->totalVideo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/youku/vo/Channel;->nowPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Lcom/youku/vo/Channel;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget v0, p0, Lcom/youku/vo/Channel;->Pagesize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/youku/vo/Channel;->videoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 154
    iget-object v0, p0, Lcom/youku/vo/Channel;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget v0, p0, Lcom/youku/vo/Channel;->isFavInt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return-void
.end method
