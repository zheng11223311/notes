.class public Lcom/youku/vo/UserProfile$UserProfileItems;
.super Ljava/lang/Object;
.source "UserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserProfileItems"
.end annotation


# instance fields
.field public bottom_count:I

.field public color:I

.field public icon:Ljava/lang/String;

.field public id:I

.field public link_type:I

.field public link_url:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/UserProfile;

.field public title:Ljava/lang/String;

.field public top_count:I


# direct methods
.method public constructor <init>(Lcom/youku/vo/UserProfile;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/youku/vo/UserProfile$UserProfileItems;->this$0:Lcom/youku/vo/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
