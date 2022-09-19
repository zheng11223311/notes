.class public Lorg/openad/events/XYDEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/openad/events/IXYDEvent;


# static fields
.field public static final COMPLETE:Ljava/lang/String; = "complete"


# instance fields
.field public code:I

.field public data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Ljava/lang/Object;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openad/events/XYDEvent;->type:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openad/events/XYDEvent;->data:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lorg/openad/events/XYDEvent;->code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/openad/events/XYDEvent;->data:Ljava/util/Map;

    const-string v1, "message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/openad/events/XYDEvent;->data:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openad/events/XYDEvent;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openad/events/XYDEvent;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openad/events/XYDEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/openad/events/XYDEvent;->mTarget:Ljava/lang/Object;

    return-void
.end method
