.class public Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;
.super Ljava/lang/Object;
.source "IOSendEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field protected static final ARGS:Ljava/lang/String; = "args"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected static final NAME:Ljava/lang/String; = "name"


# instance fields
.field private mArgs:Ljava/lang/String;

.field private mEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent$1;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent$1;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->mEvent:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->mArgs:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->mEvent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->mArgs:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getArgs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->mArgs:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->mEvent:Ljava/lang/String;

    return-object v0
.end method

.method protected makeIOSendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->mEvent:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->mArgs:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 46
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->mEvent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->mArgs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    return-void
.end method
