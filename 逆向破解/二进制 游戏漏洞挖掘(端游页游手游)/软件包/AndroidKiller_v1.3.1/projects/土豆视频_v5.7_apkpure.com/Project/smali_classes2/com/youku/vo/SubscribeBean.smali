.class public Lcom/youku/vo/SubscribeBean;
.super Ljava/lang/Object;
.source "SubscribeBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/SubscribeBean$UserInfo;,
        Lcom/youku/vo/SubscribeBean$Recommend;
    }
.end annotation


# instance fields
.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SubscribeBean$UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public is_login:Z

.field public is_rec:Z

.field public pg:I

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SubscribeBean$Recommend;",
            ">;"
        }
    .end annotation
.end field

.field public subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/SubscribeBean;->results:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    .line 47
    return-void
.end method
