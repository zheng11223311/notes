.class public Lcom/youku/player/plugin/DetailVideoSeriesList;
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
            "Lcom/youku/player/plugin/DetailVideoSeriesList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cache_state:I

.field private cached:I

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

.field private isplaying:I

.field private limited:I

.field private play_history:F

.field private show_videoseq:I

.field private show_videostage:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/youku/player/plugin/DetailVideoSeriesList$1;

    invoke-direct {v0}, Lcom/youku/player/plugin/DetailVideoSeriesList$1;-><init>()V

    sput-object v0, Lcom/youku/player/plugin/DetailVideoSeriesList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->show_videoseq:I

    .line 21
    iput v1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->cached:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->play_history:F

    .line 23
    iput v1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->isplaying:I

    .line 41
    iput v1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->cache_state:I

    .line 63
    iput v1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->isNew:I

    .line 88
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->show_videoseq:I

    .line 21
    iput v1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->cached:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->play_history:F

    .line 23
    iput v1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->isplaying:I

    .line 41
    iput v1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->cache_state:I

    .line 63
    iput v1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->isNew:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->id:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->title:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->show_videoseq:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->show_videostage:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->desc:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->limited:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->format:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->guest:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->isNew:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->cached:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->isplaying:I

    .line 185
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getCache_state()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->cache_state:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->format:Ljava/lang/String;

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
    .line 61
    iget-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->guest:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNew()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->isNew:I

    return v0
.end method

.method public getLimited()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->limited:I

    return v0
.end method

.method public getPlay_history()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->play_history:F

    return v0
.end method

.method public getShow_videoseq()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->show_videoseq:I

    return v0
.end method

.method public getShow_videostage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->show_videostage:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCached()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->cached:I

    return v0
.end method

.method public isIsplaying()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->isplaying:I

    return v0
.end method

.method public setCache_state(I)V
    .locals 0
    .param p1, "cache_state"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->cache_state:I

    .line 50
    return-void
.end method

.method public setCached(I)V
    .locals 0
    .param p1, "cached"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->cached:I

    .line 58
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->desc:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->format:Ljava/lang/String;

    .line 84
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
    .line 75
    .local p1, "guest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->guest:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->id:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setIsNew(I)V
    .locals 0
    .param p1, "isNew"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->isNew:I

    .line 72
    return-void
.end method

.method public setIsplaying(I)V
    .locals 0
    .param p1, "isplaying"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->isplaying:I

    .line 31
    return-void
.end method

.method public setLimited(I)V
    .locals 0
    .param p1, "limited"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->limited:I

    .line 136
    return-void
.end method

.method public setPlay_history(F)V
    .locals 0
    .param p1, "play_history"    # F

    .prologue
    .line 39
    iput p1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->play_history:F

    .line 40
    return-void
.end method

.method public setShow_videoseq(I)V
    .locals 0
    .param p1, "show_videoseq"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->show_videoseq:I

    .line 112
    return-void
.end method

.method public setShow_videostage(Ljava/lang/String;)V
    .locals 0
    .param p1, "show_videostage"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->show_videostage:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->title:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->show_videoseq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->show_videostage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->limited:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->format:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->guest:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 153
    iget v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->isNew:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->cached:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/youku/player/plugin/DetailVideoSeriesList;->isplaying:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void
.end method
