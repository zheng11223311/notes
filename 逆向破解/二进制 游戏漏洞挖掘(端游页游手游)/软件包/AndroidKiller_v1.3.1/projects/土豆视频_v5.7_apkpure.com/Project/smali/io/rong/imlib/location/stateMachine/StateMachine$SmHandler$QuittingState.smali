.class Lio/rong/imlib/location/stateMachine/StateMachine$SmHandler$QuittingState;
.super Lio/rong/imlib/location/stateMachine/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/location/stateMachine/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuittingState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/location/stateMachine/StateMachine$SmHandler;


# direct methods
.method private constructor <init>(Lio/rong/imlib/location/stateMachine/StateMachine$SmHandler;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lio/rong/imlib/location/stateMachine/StateMachine$SmHandler$QuittingState;->this$0:Lio/rong/imlib/location/stateMachine/StateMachine$SmHandler;

    invoke-direct {p0}, Lio/rong/imlib/location/stateMachine/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imlib/location/stateMachine/StateMachine$SmHandler;Lio/rong/imlib/location/stateMachine/StateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/imlib/location/stateMachine/StateMachine$SmHandler;
    .param p2, "x1"    # Lio/rong/imlib/location/stateMachine/StateMachine$1;

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lio/rong/imlib/location/stateMachine/StateMachine$SmHandler$QuittingState;-><init>(Lio/rong/imlib/location/stateMachine/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 767
    const/4 v0, 0x0

    return v0
.end method
