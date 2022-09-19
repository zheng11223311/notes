.class public Lcom/youtu/apps/recommend/vo/NewRecommend;
.super Ljava/lang/Object;
.source "NewRecommend.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2a2dafe6fd5218bcL


# instance fields
.field public applications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youtu/apps/recommend/vo/NewRecommendApplications;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public slider_applications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youtu/apps/recommend/vo/NewRecommendSlider;",
            ">;"
        }
    .end annotation
.end field

.field public tab_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
