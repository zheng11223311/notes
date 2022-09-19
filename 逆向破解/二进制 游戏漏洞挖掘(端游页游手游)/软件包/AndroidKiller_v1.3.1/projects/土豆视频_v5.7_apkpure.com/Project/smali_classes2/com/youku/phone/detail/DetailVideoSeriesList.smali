.class public Lcom/youku/phone/detail/DetailVideoSeriesList;
.super Ljava/lang/Object;
.source "DetailVideoSeriesList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/phone/detail/DetailVideoSeriesList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private desc:Ljava/lang/String;

.field public dummy:Z

.field private format:Ljava/lang/String;

.field private guest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private isNew:I

.field private isplaying:I

.field private limited:I

.field private show_videoseq:I

.field private show_videostage:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/youku/phone/detail/DetailVideoSeriesList$1;

    invoke-direct {v0}, Lcom/youku/phone/detail/DetailVideoSeriesList$1;-><init>()V

    sput-object v0, Lcom/youku/phone/detail/DetailVideoSeriesList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->show_videoseq:I

    .line 22
    iput v1, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->isplaying:I

    .line 37
    iput v1, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->isNew:I

    .line 62
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->show_videoseq:I

    .line 22
    iput v1, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->isplaying:I

    .line 37
    iput v1, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->isNew:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->id:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->title:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->show_videoseq:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->show_videostage:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->desc:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->limited:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->format:Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->guest:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->isNew:I

    .line 167
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getGuest()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->guest:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNew()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->isNew:I

    return v0
.end method

.method public getLimited()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->limited:I

    return v0
.end method

.method public getShow_videoseq()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->show_videoseq:I

    return v0
.end method

.method public getShow_videostage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->show_videostage:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isIsplaying()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->isplaying:I

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->desc:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->format:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setGuest(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "guest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->guest:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->id:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->img:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setIsNew(I)V
    .locals 0
    .param p1, "isNew"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->isNew:I

    .line 46
    return-void
.end method

.method public setIsplaying(I)V
    .locals 0
    .param p1, "isplaying"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->isplaying:I

    .line 32
    return-void
.end method

.method public setLimited(I)V
    .locals 0
    .param p1, "limited"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->limited:I

    .line 119
    return-void
.end method

.method public setShow_videoseq(I)V
    .locals 0
    .param p1, "show_videoseq"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->show_videoseq:I

    .line 95
    return-void
.end method

.method public setShow_videostage(Ljava/lang/String;)V
    .locals 0
    .param p1, "show_videostage"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->show_videostage:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->title:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->show_videoseq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->show_videostage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->limited:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->format:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->guest:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 137
    iget v0, p0, Lcom/youku/phone/detail/DetailVideoSeriesList;->isNew:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return-void
.end method
