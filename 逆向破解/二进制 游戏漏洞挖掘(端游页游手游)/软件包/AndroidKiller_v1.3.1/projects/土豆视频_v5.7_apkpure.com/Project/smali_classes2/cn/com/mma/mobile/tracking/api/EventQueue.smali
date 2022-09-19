.class Lcn/com/mma/mobile/tracking/api/EventQueue;
.super Ljava/lang/Object;
.source "Countly.java"


# instance fields
.field private events_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/mma/mobile/tracking/api/SendEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/mma/mobile/tracking/api/EventQueue;->events_:Ljava/util/ArrayList;

    .line 1160
    return-void
.end method


# virtual methods
.method public events()Ljava/util/List;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/EventQueue;->events_:Ljava/util/ArrayList;

    return-object v0
.end method

.method public recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "evetName"    # Ljava/lang/String;
    .param p3, "muds"    # Ljava/lang/String;

    .prologue
    .line 1173
    monitor-enter p0

    .line 1174
    :try_start_0
    new-instance v1, Lcn/com/mma/mobile/tracking/api/SendEvent;

    invoke-direct {v1}, Lcn/com/mma/mobile/tracking/api/SendEvent;-><init>()V

    .line 1175
    .local v1, "sendEvent":Lcn/com/mma/mobile/tracking/api/SendEvent;
    iput-object p1, v1, Lcn/com/mma/mobile/tracking/api/SendEvent;->url:Ljava/lang/String;

    .line 1176
    iput-object p3, v1, Lcn/com/mma/mobile/tracking/api/SendEvent;->muds:Ljava/lang/String;

    .line 1177
    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1178
    iput-object p2, v1, Lcn/com/mma/mobile/tracking/api/SendEvent;->eventName:Ljava/lang/String;

    .line 1179
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcn/com/mma/mobile/tracking/api/SendEvent;->timestamp:J

    .line 1180
    iget-object v2, p0, Lcn/com/mma/mobile/tracking/api/EventQueue;->events_:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    invoke-virtual {p0}, Lcn/com/mma/mobile/tracking/api/EventQueue;->size()I

    move-result v2

    sget v3, Lcn/com/mma/mobile/tracking/api/Countly;->OFFLINECACHE_LENGTH:I

    if-gt v2, v3, :cond_1

    sget-boolean v2, Lcn/com/mma/mobile/tracking/api/Countly;->SENDIMMEDIATELY:Z

    if-eqz v2, :cond_4

    .line 1182
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcn/com/mma/mobile/tracking/api/EventQueue;->events()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1183
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/mma/mobile/tracking/api/Countly;->getQueue_()Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1184
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/mma/mobile/tracking/api/Countly;->getQueue_()Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    move-result-object v3

    invoke-virtual {p0}, Lcn/com/mma/mobile/tracking/api/EventQueue;->events()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/mma/mobile/tracking/api/SendEvent;

    invoke-virtual {v3, v2}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->recordEvents(Lcn/com/mma/mobile/tracking/api/SendEvent;)V

    .line 1182
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1186
    :cond_3
    invoke-virtual {p0}, Lcn/com/mma/mobile/tracking/api/EventQueue;->events()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1188
    .end local v0    # "i":I
    :cond_4
    monitor-exit p0

    .line 1189
    return-void

    .line 1188
    .end local v1    # "sendEvent":Lcn/com/mma/mobile/tracking/api/SendEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1163
    monitor-enter p0

    .line 1164
    :try_start_0
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/EventQueue;->events_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1165
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
