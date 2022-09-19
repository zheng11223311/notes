.class public Lcom/youku/vo/DetailVideoSeriesList;
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
            "Lcom/youku/vo/DetailVideoSeriesList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
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
    .line 119
    new-instance v0, Lcom/youku/vo/DetailVideoSeriesList$1;

    invoke-direct {v0}, Lcom/youku/vo/DetailVideoSeriesList$1;-><init>()V

    sput-object v0, Lcom/youku/vo/DetailVideoSeriesList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->show_videoseq:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->isNew:I

    .line 49
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->show_videoseq:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->isNew:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->id:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->title:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->show_videoseq:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->show_videostage:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->desc:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->limited:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->format:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->guest:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->isNew:I

    .line 145
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->format:Ljava/lang/String;

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
    .line 22
    iget-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->guest:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNew()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->isNew:I

    return v0
.end method

.method public getLimited()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->limited:I

    return v0
.end method

.method public getShow_videoseq()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->show_videoseq:I

    return v0
.end method

.method public getShow_videostage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->show_videostage:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/youku/vo/DetailVideoSeriesList;->desc:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/youku/vo/DetailVideoSeriesList;->format:Ljava/lang/String;

    .line 45
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
    .line 36
    .local p1, "guest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/youku/vo/DetailVideoSeriesList;->guest:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/youku/vo/DetailVideoSeriesList;->id:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setIsNew(I)V
    .locals 0
    .param p1, "isNew"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/youku/vo/DetailVideoSeriesList;->isNew:I

    .line 33
    return-void
.end method

.method public setLimited(I)V
    .locals 0
    .param p1, "limited"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/youku/vo/DetailVideoSeriesList;->limited:I

    .line 97
    return-void
.end method

.method public setShow_videoseq(I)V
    .locals 0
    .param p1, "show_videoseq"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/youku/vo/DetailVideoSeriesList;->show_videoseq:I

    .line 73
    return-void
.end method

.method public setShow_videostage(Ljava/lang/String;)V
    .locals 0
    .param p1, "show_videostage"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/youku/vo/DetailVideoSeriesList;->show_videostage:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/youku/vo/DetailVideoSeriesList;->title:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->show_videoseq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->show_videostage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->limited:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->format:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->guest:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 115
    iget v0, p0, Lcom/youku/vo/DetailVideoSeriesList;->isNew:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return-void
.end method
