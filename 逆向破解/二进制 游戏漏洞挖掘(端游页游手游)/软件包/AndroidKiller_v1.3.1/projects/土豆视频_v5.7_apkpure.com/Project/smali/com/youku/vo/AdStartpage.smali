.class public Lcom/youku/vo/AdStartpage;
.super Ljava/lang/Object;
.source "AdStartpage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/AdStartpage$Partner;
    }
.end annotation


# static fields
.field public static final Browser:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/vo/AdStartpage;",
            ">;"
        }
    .end annotation
.end field

.field public static final Game:I = 0x6

.field public static final Show:I = 0x3

.field public static final Special:I = 0x4

.field public static final Video:I = 0x2

.field public static final Webview:I = 0x1


# instance fields
.field public CU:Ljava/lang/String;

.field public CUF:I

.field public CUM:[Ljava/lang/String;

.field public CUMSDK:[I

.field public CUU:Ljava/lang/String;

.field public RS:Ljava/lang/String;

.field public SUE:[Ljava/lang/String;

.field public SUESDK:[I

.field public SUS:[Ljava/lang/String;

.field public SUSSDK:[I

.field public TI:Ljava/lang/String;

.field public partner:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/AdStartpage$Partner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/youku/vo/AdStartpage$1;

    invoke-direct {v0}, Lcom/youku/vo/AdStartpage$1;-><init>()V

    sput-object v0, Lcom/youku/vo/AdStartpage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/vo/AdStartpage;->CU:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/youku/vo/AdStartpage;->CUF:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/vo/AdStartpage;->CUU:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 111
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    .line 112
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/youku/vo/AdStartpage;->CUMSDK:[I

    .line 113
    iget-object v1, p0, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/youku/vo/AdStartpage;->CUMSDK:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/youku/vo/AdStartpage;->CU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/youku/vo/AdStartpage;->CUF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v0, p0, Lcom/youku/vo/AdStartpage;->CUU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/youku/vo/AdStartpage;->CUMSDK:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
