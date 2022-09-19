.class public Lorg/openad/events/XYDEventDispatcher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/openad/events/IXYDEventDispatcher;


# instance fields
.field protected evtlisteners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/openad/events/IXYDEventListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/openad/events/XYDEventDispatcher;->removeAllListeners()V

    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/openad/events/XYDEventDispatcher;->removeEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    iget-object v0, p0, Lorg/openad/events/XYDEventDispatcher;->evtlisteners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/openad/events/XYDEventDispatcher;->evtlisteners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dispatchEvent(Lorg/openad/events/IXYDEvent;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1, p0}, Lorg/openad/events/IXYDEvent;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/openad/events/XYDEventDispatcher;->evtlisteners:Ljava/util/Map;

    invoke-interface {p1}, Lorg/openad/events/IXYDEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/openad/events/IXYDEventListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3, p1}, Lorg/openad/events/IXYDEventListener;->run(Lorg/openad/events/IXYDEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0}, Lorg/openad/events/XYDEventDispatcher;->removeAllListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openad/events/XYDEventDispatcher;->evtlisteners:Ljava/util/Map;

    return-void
.end method

.method public hasEventListener(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/openad/events/XYDEventDispatcher;->evtlisteners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllListeners()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openad/events/XYDEventDispatcher;->evtlisteners:Ljava/util/Map;

    return-void
.end method

.method public removeEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/openad/events/XYDEventDispatcher;->evtlisteners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openad/events/XYDEventDispatcher;->evtlisteners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeEventListeners(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openad/events/XYDEventDispatcher;->evtlisteners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
