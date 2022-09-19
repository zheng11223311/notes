.class public Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;
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
            "Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cache_state:I

.field private cached:Z

.field private desc:Ljava/lang/String;

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

.field private isNew:I

.field private limited:I

.field private show_videoseq:I

.field private show_videostage:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList$1;

    invoke-direct {v0}, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList$1;-><init>()V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->show_videoseq:I

    .line 21
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->cached:Z

    .line 23
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->cache_state:I

    .line 44
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->isNew:I

    .line 69
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->show_videoseq:I

    .line 21
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->cached:Z

    .line 23
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->cache_state:I

    .line 44
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->isNew:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->id:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->title:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->show_videoseq:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->show_videostage:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->desc:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->limited:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->format:Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->guest:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->isNew:I

    .line 165
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getCache_state()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->cache_state:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->format:Ljava/lang/String;

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
    .line 42
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->guest:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNew()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->isNew:I

    return v0
.end method

.method public getLimited()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->limited:I

    return v0
.end method

.method public getShow_videoseq()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->show_videoseq:I

    return v0
.end method

.method public getShow_videostage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->show_videostage:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCached()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->cached:Z

    return v0
.end method

.method public setCache_state(I)V
    .locals 0
    .param p1, "cache_state"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->cache_state:I

    .line 31
    return-void
.end method

.method public setCached(Z)V
    .locals 0
    .param p1, "cached"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->cached:Z

    .line 39
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->desc:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->format:Ljava/lang/String;

    .line 65
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
    .line 56
    .local p1, "guest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->guest:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->id:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setIsNew(I)V
    .locals 0
    .param p1, "isNew"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->isNew:I

    .line 53
    return-void
.end method

.method public setLimited(I)V
    .locals 0
    .param p1, "limited"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->limited:I

    .line 117
    return-void
.end method

.method public setShow_videoseq(I)V
    .locals 0
    .param p1, "show_videoseq"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->show_videoseq:I

    .line 93
    return-void
.end method

.method public setShow_videostage(Ljava/lang/String;)V
    .locals 0
    .param p1, "show_videostage"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->show_videostage:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->title:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->show_videoseq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->show_videostage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->limited:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->format:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->guest:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 135
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailVideoSeriesList;->isNew:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    return-void
.end method
