.class public abstract Lcom/tudou/service/download/ICallback$Stub;
.super Landroid/os/Binder;
.source "ICallback.java"

# interfaces
.implements Lcom/tudou/service/download/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/download/ICallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/service/download/ICallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tudou.service.download.ICallback"

.field static final TRANSACTION_onChanged:I = 0x1

.field static final TRANSACTION_onFinish:I = 0x2

.field static final TRANSACTION_refresh:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.tudou.service.download.ICallback"

    invoke-virtual {p0, p0, v0}, Lcom/tudou/service/download/ICallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tudou/service/download/ICallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.tudou.service.download.ICallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tudou/service/download/ICallback;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/tudou/service/download/ICallback;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/tudou/service/download/ICallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/tudou/service/download/ICallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 49
    :sswitch_0
    const-string v2, "com.tudou.service.download.ICallback"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v2, "com.tudou.service.download.ICallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    sget-object v2, Lcom/tudou/service/download/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/service/download/DownloadInfo;

    .line 62
    .local v0, "_arg0":Lcom/tudou/service/download/DownloadInfo;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/tudou/service/download/ICallback$Stub;->onChanged(Lcom/tudou/service/download/DownloadInfo;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":Lcom/tudou/service/download/DownloadInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/tudou/service/download/DownloadInfo;
    goto :goto_1

    .line 68
    .end local v0    # "_arg0":Lcom/tudou/service/download/DownloadInfo;
    :sswitch_2
    const-string v2, "com.tudou.service.download.ICallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    sget-object v2, Lcom/tudou/service/download/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/service/download/DownloadInfo;

    .line 76
    .restart local v0    # "_arg0":Lcom/tudou/service/download/DownloadInfo;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/tudou/service/download/ICallback$Stub;->onFinish(Lcom/tudou/service/download/DownloadInfo;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0    # "_arg0":Lcom/tudou/service/download/DownloadInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/tudou/service/download/DownloadInfo;
    goto :goto_2

    .line 82
    .end local v0    # "_arg0":Lcom/tudou/service/download/DownloadInfo;
    :sswitch_3
    const-string v2, "com.tudou.service.download.ICallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/tudou/service/download/ICallback$Stub;->refresh()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
