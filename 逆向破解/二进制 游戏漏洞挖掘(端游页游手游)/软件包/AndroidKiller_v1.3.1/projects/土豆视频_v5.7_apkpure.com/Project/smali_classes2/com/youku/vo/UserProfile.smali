.class public Lcom/youku/vo/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/UserProfile$UserProfileItems;,
        Lcom/youku/vo/UserProfile$UserProfileResult;
    }
.end annotation


# instance fields
.field public results:Lcom/youku/vo/UserProfile$UserProfileResult;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/youku/vo/UserProfile$UserProfileResult;

    invoke-direct {v0, p0}, Lcom/youku/vo/UserProfile$UserProfileResult;-><init>(Lcom/youku/vo/UserProfile;)V

    iput-object v0, p0, Lcom/youku/vo/UserProfile;->results:Lcom/youku/vo/UserProfile$UserProfileResult;

    .line 27
    return-void
.end method
