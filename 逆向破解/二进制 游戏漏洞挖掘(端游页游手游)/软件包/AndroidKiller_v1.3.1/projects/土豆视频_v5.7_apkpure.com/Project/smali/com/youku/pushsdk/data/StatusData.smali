.class public Lcom/youku/pushsdk/data/StatusData;
.super Ljava/lang/Object;
.source "StatusData.java"


# static fields
.field private static extend:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/youku/pushsdk/data/StatusData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/pushsdk/data/StatusData;->instance:Lcom/youku/pushsdk/data/StatusData;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/youku/pushsdk/data/StatusData;->extend:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/youku/pushsdk/data/StatusData;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/youku/pushsdk/data/StatusData;->instance:Lcom/youku/pushsdk/data/StatusData;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/youku/pushsdk/data/StatusData;

    invoke-direct {v0}, Lcom/youku/pushsdk/data/StatusData;-><init>()V

    sput-object v0, Lcom/youku/pushsdk/data/StatusData;->instance:Lcom/youku/pushsdk/data/StatusData;

    .line 29
    :cond_0
    sget-object v0, Lcom/youku/pushsdk/data/StatusData;->instance:Lcom/youku/pushsdk/data/StatusData;

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/youku/pushsdk/data/StatusData;->extend:Ljava/util/HashMap;

    return-object v0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v0, Lcom/youku/pushsdk/data/StatusData;->extend:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method
