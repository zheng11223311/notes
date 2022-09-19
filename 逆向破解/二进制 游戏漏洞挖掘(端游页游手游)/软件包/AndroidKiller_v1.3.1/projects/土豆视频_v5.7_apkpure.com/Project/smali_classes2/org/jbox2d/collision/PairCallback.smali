.class public abstract Lorg/jbox2d/collision/PairCallback;
.super Ljava/lang/Object;
.source "PairCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract pairAdded(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract pairRemoved(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end method
