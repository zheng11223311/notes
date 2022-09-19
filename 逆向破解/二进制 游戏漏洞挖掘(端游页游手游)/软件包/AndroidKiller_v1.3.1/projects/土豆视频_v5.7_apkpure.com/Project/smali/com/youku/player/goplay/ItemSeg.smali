.class public Lcom/youku/player/goplay/ItemSeg;
.super Ljava/lang/Object;
.source "ItemSeg.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/player/goplay/ItemSeg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fieldId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private intSeconds:I

.field private size:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/youku/player/goplay/ItemSeg$1;

    invoke-direct {v0}, Lcom/youku/player/goplay/ItemSeg$1;-><init>()V

    sput-object v0, Lcom/youku/player/goplay/ItemSeg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/goplay/ItemSeg;->id:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/goplay/ItemSeg;->size:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/player/goplay/ItemSeg;->intSeconds:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/goplay/ItemSeg;->url:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/goplay/ItemSeg;->fieldId:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "Id"    # Ljava/lang/String;
    .param p2, "Size"    # Ljava/lang/String;
    .param p3, "seconds"    # I
    .param p4, "Url"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/youku/player/goplay/ItemSeg;->id:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/youku/player/goplay/ItemSeg;->size:Ljava/lang/String;

    .line 60
    iput p3, p0, Lcom/youku/player/goplay/ItemSeg;->intSeconds:I

    .line 61
    iput-object p4, p0, Lcom/youku/player/goplay/ItemSeg;->url:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "Id"    # Ljava/lang/String;
    .param p2, "Size"    # Ljava/lang/String;
    .param p3, "Seconds"    # Ljava/lang/String;
    .param p4, "Url"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/youku/player/goplay/ItemSeg;->id:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/youku/player/goplay/ItemSeg;->size:Ljava/lang/String;

    .line 39
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/youku/player/goplay/ItemSeg;->intSeconds:I

    .line 40
    iput-object p4, p0, Lcom/youku/player/goplay/ItemSeg;->url:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "size"    # Ljava/lang/String;
    .param p3, "seconds"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "fieldId"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/youku/player/goplay/ItemSeg;->id:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/youku/player/goplay/ItemSeg;->size:Ljava/lang/String;

    .line 49
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/youku/player/goplay/ItemSeg;->intSeconds:I

    .line 50
    iput-object p4, p0, Lcom/youku/player/goplay/ItemSeg;->url:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/youku/player/goplay/ItemSeg;->fieldId:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getFieldId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/youku/player/goplay/ItemSeg;->fieldId:Ljava/lang/String;

    return-object v0
.end method

.method public get_Seconds()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/youku/player/goplay/ItemSeg;->intSeconds:I

    return v0
.end method

.method public get_Size()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/youku/player/goplay/ItemSeg;->size:Ljava/lang/String;

    return-object v0
.end method

.method public get_Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/youku/player/goplay/ItemSeg;->url:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/youku/player/goplay/ItemSeg;->id:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/player/goplay/ItemSeg;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/youku/player/goplay/ItemSeg;->size:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/youku/player/goplay/ItemSeg;->intSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Lcom/youku/player/goplay/ItemSeg;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/youku/player/goplay/ItemSeg;->fieldId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return-void
.end method
