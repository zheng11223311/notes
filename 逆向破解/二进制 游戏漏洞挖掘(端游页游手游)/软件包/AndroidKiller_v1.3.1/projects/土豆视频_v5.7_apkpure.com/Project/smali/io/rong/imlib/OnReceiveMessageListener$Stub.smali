.class public abstract Lio/rong/imlib/OnReceiveMessageListener$Stub;
.super Landroid/os/Binder;
.source "OnReceiveMessageListener.java"

# interfaces
.implements Lio/rong/imlib/OnReceiveMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/OnReceiveMessageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/OnReceiveMessageListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "io.rong.imlib.OnReceiveMessageListener"

.field static final TRANSACTION_onReceived:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "io.rong.imlib.OnReceiveMessageListener"

    invoke-virtual {p0, p0, v0}, Lio/rong/imlib/OnReceiveMessageListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/rong/imlib/OnReceiveMessageListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "io.rong.imlib.OnReceiveMessageListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lio/rong/imlib/OnReceiveMessageListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lio/rong/imlib/OnReceiveMessageListener;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lio/rong/imlib/OnReceiveMessageListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lio/rong/imlib/OnReceiveMessageListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "io.rong.imlib.OnReceiveMessageListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "io.rong.imlib.OnReceiveMessageListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    sget-object v3, Lio/rong/imlib/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Message;

    .line 56
    .local v0, "_arg0":Lio/rong/imlib/model/Message;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lio/rong/imlib/OnReceiveMessageListener$Stub;->onReceived(Lio/rong/imlib/model/Message;I)Z

    move-result v2

    .line 58
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v2, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Lio/rong/imlib/model/Message;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lio/rong/imlib/model/Message;
    goto :goto_1

    .line 59
    .restart local v1    # "_arg1":I
    .restart local v2    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
