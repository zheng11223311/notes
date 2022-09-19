.class public Lio/rong/imlib/navigation/NavigationConfig;
.super Ljava/lang/Object;
.source "NavigationConfig.java"


# instance fields
.field private code:Ljava/lang/String;

.field private configure:Z

.field private conversationTypes:[I

.field private distanceFilter:I

.field private hasUserSystem:Z

.field private maxParticipant:I

.field private refreshInterval:I

.field private server:Ljava/lang/String;

.field private uploadServer:Ljava/lang/String;

.field private voipServer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConversationTypes()[I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/rong/imlib/navigation/NavigationConfig;->conversationTypes:[I

    return-object v0
.end method

.method public getDistanceFilter()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lio/rong/imlib/navigation/NavigationConfig;->distanceFilter:I

    return v0
.end method

.method public getMaxParticipant()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lio/rong/imlib/navigation/NavigationConfig;->maxParticipant:I

    return v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lio/rong/imlib/navigation/NavigationConfig;->refreshInterval:I

    return v0
.end method

.method public isConfigure()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lio/rong/imlib/navigation/NavigationConfig;->configure:Z

    return v0
.end method

.method public setConfigure(Z)V
    .locals 0
    .param p1, "isConfig"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lio/rong/imlib/navigation/NavigationConfig;->configure:Z

    .line 46
    return-void
.end method

.method public setConversationTypes([I)V
    .locals 0
    .param p1, "types"    # [I

    .prologue
    .line 41
    iput-object p1, p0, Lio/rong/imlib/navigation/NavigationConfig;->conversationTypes:[I

    .line 42
    return-void
.end method

.method public setDistanceFilter(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 57
    iput p1, p0, Lio/rong/imlib/navigation/NavigationConfig;->distanceFilter:I

    .line 58
    return-void
.end method

.method public setMaxParticipant(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 49
    iput p1, p0, Lio/rong/imlib/navigation/NavigationConfig;->maxParticipant:I

    .line 50
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 53
    iput p1, p0, Lio/rong/imlib/navigation/NavigationConfig;->refreshInterval:I

    .line 54
    return-void
.end method
