.class final Lcom/alipay/android/app/empty/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/alipay/android/app/empty/RuntimeEvent;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/alipay/android/app/empty/RuntimeEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alipay/android/app/empty/RuntimeEvent;-><init>(Landroid/os/Parcel;Lcom/alipay/android/app/empty/f;)V

    return-object v0
.end method

.method public a(I)[Lcom/alipay/android/app/empty/RuntimeEvent;
    .locals 1

    .prologue
    .line 135
    new-array v0, p1, [Lcom/alipay/android/app/empty/RuntimeEvent;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/empty/f;->a(Landroid/os/Parcel;)Lcom/alipay/android/app/empty/RuntimeEvent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/empty/f;->a(I)[Lcom/alipay/android/app/empty/RuntimeEvent;

    move-result-object v0

    return-object v0
.end method
