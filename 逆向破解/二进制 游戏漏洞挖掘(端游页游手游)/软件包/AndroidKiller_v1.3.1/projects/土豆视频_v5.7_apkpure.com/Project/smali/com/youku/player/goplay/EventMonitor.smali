.class public Lcom/youku/player/goplay/EventMonitor;
.super Ljava/lang/Object;
.source "EventMonitor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/player/goplay/EventMonitor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public SKIP:Lcom/youku/player/goplay/EMSkip;

.field public VIEW:Lcom/youku/player/goplay/EMView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/youku/player/goplay/EventMonitor$1;

    invoke-direct {v0}, Lcom/youku/player/goplay/EventMonitor$1;-><init>()V

    sput-object v0, Lcom/youku/player/goplay/EventMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/youku/player/goplay/EMSkip;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/EMSkip;

    iput-object v0, p0, Lcom/youku/player/goplay/EventMonitor;->SKIP:Lcom/youku/player/goplay/EMSkip;

    .line 33
    const-class v0, Lcom/youku/player/goplay/EMView;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/EMView;

    iput-object v0, p0, Lcom/youku/player/goplay/EventMonitor;->VIEW:Lcom/youku/player/goplay/EMView;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    .line 27
    iget-object v0, p0, Lcom/youku/player/goplay/EventMonitor;->SKIP:Lcom/youku/player/goplay/EMSkip;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 28
    iget-object v0, p0, Lcom/youku/player/goplay/EventMonitor;->VIEW:Lcom/youku/player/goplay/EMView;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 29
    return-void
.end method
