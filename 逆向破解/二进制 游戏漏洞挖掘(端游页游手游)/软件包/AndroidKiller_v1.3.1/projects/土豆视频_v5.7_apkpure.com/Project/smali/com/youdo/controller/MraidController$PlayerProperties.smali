.class public Lcom/youdo/controller/MraidController$PlayerProperties;
.super Lcom/youdo/controller/MraidController$ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/controller/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerProperties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youdo/controller/MraidController$PlayerProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public audioMuted:Z

.field public autoPlay:Z

.field public doLoop:Z

.field public inline:Z

.field public showControl:Z

.field public startStyle:Ljava/lang/String;

.field public stopStyle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/youdo/controller/MraidController$PlayerProperties$1;

    invoke-direct {v0}, Lcom/youdo/controller/MraidController$PlayerProperties$1;-><init>()V

    sput-object v0, Lcom/youdo/controller/MraidController$PlayerProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/youdo/controller/MraidController$ReflectedParcelable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->showControl:Z

    iput-boolean v0, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->autoPlay:Z

    iput-boolean v1, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->audioMuted:Z

    iput-boolean v1, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->doLoop:Z

    const-string v0, "normal"

    iput-object v0, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->stopStyle:Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->startStyle:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->inline:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/youdo/controller/MraidController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public doLoop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->doLoop:Z

    return v0
.end method

.method public doMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->audioMuted:Z

    return v0
.end method

.method public exitOnComplete()Z
    .locals 2

    iget-object v0, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->stopStyle:Ljava/lang/String;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAutoPlay()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->autoPlay:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreen()Z
    .locals 2

    iget-object v0, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->startStyle:Ljava/lang/String;

    const-string v1, "fullscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public muteAudio()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->audioMuted:Z

    return-void
.end method

.method public setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-boolean p2, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->autoPlay:Z

    iput-boolean p3, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->showControl:Z

    iput-boolean p5, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->doLoop:Z

    iput-boolean p1, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->audioMuted:Z

    iput-object p6, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->startStyle:Ljava/lang/String;

    iput-object p7, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->stopStyle:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->inline:Z

    return-void
.end method

.method public setStopStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->stopStyle:Ljava/lang/String;

    return-void
.end method

.method public showControl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/youdo/controller/MraidController$PlayerProperties;->showControl:Z

    return v0
.end method
