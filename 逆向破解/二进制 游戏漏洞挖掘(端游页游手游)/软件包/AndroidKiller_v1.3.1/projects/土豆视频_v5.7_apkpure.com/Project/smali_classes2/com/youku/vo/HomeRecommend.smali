.class public Lcom/youku/vo/HomeRecommend;
.super Ljava/lang/Object;
.source "HomeRecommend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/HomeRecommend$HomeGroup;,
        Lcom/youku/vo/HomeRecommend$Cell;
    }
.end annotation


# instance fields
.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HomeRecommend$HomeGroup;",
            ">;"
        }
    .end annotation
.end field

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method
