.class public final Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;
.super Ljava/lang/Object;
.source "BeanBitmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CAPTCHA:Ljava/lang/String; = "captcha"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBp:Landroid/graphics/Bitmap;

.field private mBpKey:Ljava/lang/String;

.field private mBpPath:Ljava/lang/String;

.field private mBpUrl:Ljava/lang/String;

.field private mCooike:Ljava/lang/String;

.field private mWidgetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap$1;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap$1;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBpKey:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBpUrl:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBpPath:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBp:Landroid/graphics/Bitmap;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mCooike:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mWidgetId:I

    .line 68
    return-void
.end method

.method static synthetic access$002(Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mCooike:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBpKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBpUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBpPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mWidgetId:I

    return p1
.end method

.method static synthetic access$502(Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBp:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBpKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBitmapPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBpPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBitmapUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCooike()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mCooike:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mWidgetId:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 94
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "mBp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBp:Landroid/graphics/Bitmap;

    .line 40
    return-void
.end method

.method public setBitmapKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBpKey"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBpKey:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setBitmapPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBpPath"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBpPath:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setBitmapUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBpUrl"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBpUrl:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setCooike(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCooike"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mCooike:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setWidgetId(I)V
    .locals 0
    .param p1, "widgetId"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mWidgetId:I

    .line 24
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mCooike:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBpKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBpUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBpPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mWidgetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->mBp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 104
    return-void
.end method
