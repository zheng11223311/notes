.class Lcn/domob/android/b/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/b/b$a$b;,
        Lcn/domob/android/b/b$a$c;,
        Lcn/domob/android/b/b$a$a;
    }
.end annotation


# static fields
.field private static final a:Lcn/domob/android/b/b$a;

.field private static final e:J = 0x927c0L

.field private static final f:I = 0x1d4c0

.field private static final g:I = 0x124f80

.field private static final h:I = 0x1d4c0


# instance fields
.field private b:Landroid/location/Location;

.field private c:I

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 731
    new-instance v0, Lcn/domob/android/b/b$a;

    invoke-direct {v0}, Lcn/domob/android/b/b$a;-><init>()V

    sput-object v0, Lcn/domob/android/b/b$a;->a:Lcn/domob/android/b/b$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    const/4 v0, -0x1

    iput v0, p0, Lcn/domob/android/b/b$a;->c:I

    .line 735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/b/b$a;->d:Z

    .line 837
    return-void
.end method

.method static synthetic a(Lcn/domob/android/b/b$a;)I
    .locals 1

    .prologue
    .line 730
    invoke-direct {p0}, Lcn/domob/android/b/b$a;->d()I

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;)Landroid/location/Location;
    .locals 10

    .prologue
    .line 760
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 761
    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/android/b/b$a;->c:I

    .line 763
    if-nez v2, :cond_0

    .line 764
    const/4 v0, 0x0

    .line 797
    :goto_0
    return-object v0

    .line 766
    :cond_0
    :try_start_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v0}, Lcn/domob/android/ads/c/e;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 767
    if-nez v3, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v0}, Lcn/domob/android/ads/c/e;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 768
    :cond_1
    const-string v0, "location"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 769
    if-eqz v0, :cond_6

    .line 770
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    .line 771
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 772
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 773
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 774
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 775
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcn/domob/android/b/b$a;->b:Landroid/location/Location;

    invoke-direct {p0, v1, v5}, Lcn/domob/android/b/b$a;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 776
    iput-object v1, p0, Lcn/domob/android/b/b$a;->b:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 794
    :catch_0
    move-exception v0

    .line 795
    invoke-static {}, Lcn/domob/android/b/b;->h()Lcn/domob/android/ads/c/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    .line 797
    :cond_3
    :goto_2
    iget-object v0, p0, Lcn/domob/android/b/b$a;->b:Landroid/location/Location;

    goto :goto_0

    .line 779
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcn/domob/android/b/b$a;->b:Landroid/location/Location;

    if-eqz v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcn/domob/android/b/b$a;->b:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    add-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    .line 780
    :cond_5
    invoke-direct {p0, v0, v2}, Lcn/domob/android/b/b$a;->a(Landroid/location/LocationManager;Landroid/content/Context;)V

    .line 783
    :cond_6
    iget-object v1, p0, Lcn/domob/android/b/b$a;->b:Landroid/location/Location;

    if-nez v1, :cond_3

    .line 784
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 785
    if-eqz v0, :cond_8

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    if-nez v1, :cond_3

    if-eqz v3, :cond_3

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 788
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/android/b/b$a;->c:I

    goto :goto_2

    .line 792
    :cond_9
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/android/b/b$a;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic a(Lcn/domob/android/b/b$a;Landroid/content/Context;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcn/domob/android/b/b$a;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Lcn/domob/android/b/b$a;
    .locals 1

    .prologue
    .line 730
    invoke-static {}, Lcn/domob/android/b/b$a;->b()Lcn/domob/android/b/b$a;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/location/Location;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1018
    const/4 v0, 0x0

    .line 1019
    if-eqz p1, :cond_0

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1022
    invoke-static {}, Lcn/domob/android/b/b;->h()Lcn/domob/android/ads/c/f;

    move-result-object v1

    const-class v2, Lcn/domob/android/b/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User coordinates are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1026
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/b/b$a;Landroid/location/Location;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcn/domob/android/b/b$a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Landroid/location/LocationManager;Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 801
    monitor-enter p0

    if-nez p1, :cond_1

    .line 824
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 805
    :cond_1
    :try_start_0
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 806
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 807
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 808
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 809
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 810
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 811
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 812
    new-instance v5, Lcn/domob/android/b/b$a$b;

    invoke-direct {v5, p0, p1}, Lcn/domob/android/b/b$a$b;-><init>(Lcn/domob/android/b/b$a;Landroid/location/LocationManager;)V

    .line 813
    invoke-static {}, Lcn/domob/android/b/b;->h()Lcn/domob/android/ads/c/f;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start to listener position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 814
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 815
    const-string v0, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 816
    const v0, 0x124f80

    invoke-direct {p0, p1, v5, v0, v1}, Lcn/domob/android/b/b$a;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 821
    :catch_0
    move-exception v0

    .line 822
    :try_start_1
    invoke-static {}, Lcn/domob/android/b/b;->h()Lcn/domob/android/ads/c/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 801
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 817
    :cond_3
    :try_start_2
    const-string v0, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 818
    const v0, 0x1d4c0

    invoke-direct {p0, p1, v5, v0, v1}, Lcn/domob/android/b/b$a;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private a(Landroid/location/LocationManager;Landroid/location/LocationListener;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 827
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 828
    new-instance v1, Lcn/domob/android/b/b$a$1;

    invoke-direct {v1, p0, p1, p2, p4}, Lcn/domob/android/b/b$a$1;-><init>(Lcn/domob/android/b/b$a;Landroid/location/LocationManager;Landroid/location/LocationListener;Ljava/lang/String;)V

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 835
    return-void
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 12

    .prologue
    const-wide/32 v10, 0x927c0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 883
    if-nez p2, :cond_1

    .line 930
    :cond_0
    :goto_0
    return v1

    .line 888
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 889
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 890
    cmp-long v0, v4, v10

    if-gtz v0, :cond_2

    cmp-long v0, v6, v10

    if-gtz v0, :cond_0

    .line 893
    :cond_2
    cmp-long v0, v4, v10

    if-lez v0, :cond_3

    cmp-long v0, v6, v10

    if-gtz v0, :cond_3

    move v1, v2

    .line 894
    goto :goto_0

    .line 898
    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 899
    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    move v3, v1

    .line 900
    :goto_1
    const-wide/32 v6, -0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    move v0, v1

    .line 901
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    move v5, v1

    .line 905
    :goto_3
    if-nez v3, :cond_0

    .line 908
    if-eqz v0, :cond_7

    move v1, v2

    .line 909
    goto :goto_0

    :cond_4
    move v3, v2

    .line 899
    goto :goto_1

    :cond_5
    move v0, v2

    .line 900
    goto :goto_2

    :cond_6
    move v5, v2

    .line 901
    goto :goto_3

    .line 913
    :cond_7
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 914
    if-lez v0, :cond_a

    move v4, v1

    .line 915
    :goto_4
    if-gez v0, :cond_b

    move v3, v1

    .line 916
    :goto_5
    const/16 v6, 0xc8

    if-le v0, v6, :cond_c

    move v0, v1

    .line 919
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcn/domob/android/b/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 923
    if-nez v3, :cond_0

    .line 925
    if-eqz v5, :cond_8

    if-eqz v4, :cond_0

    .line 927
    :cond_8
    if-eqz v5, :cond_9

    if-nez v0, :cond_9

    if-nez v6, :cond_0

    :cond_9
    move v1, v2

    .line 930
    goto :goto_0

    :cond_a
    move v4, v2

    .line 914
    goto :goto_4

    :cond_b
    move v3, v2

    .line 915
    goto :goto_5

    :cond_c
    move v0, v2

    .line 916
    goto :goto_6
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 935
    if-nez p1, :cond_2

    .line 936
    if-nez p2, :cond_1

    .line 941
    :cond_0
    :goto_0
    return v0

    .line 936
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 938
    :cond_2
    if-eqz p2, :cond_0

    .line 939
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcn/domob/android/b/b$a;)I
    .locals 1

    .prologue
    .line 730
    invoke-direct {p0}, Lcn/domob/android/b/b$a;->c()I

    move-result v0

    return v0
.end method

.method private static b()Lcn/domob/android/b/b$a;
    .locals 1

    .prologue
    .line 756
    sget-object v0, Lcn/domob/android/b/b$a;->a:Lcn/domob/android/b/b$a;

    return-object v0
.end method

.method private c()I
    .locals 4

    .prologue
    .line 951
    iget-object v0, p0, Lcn/domob/android/b/b$a;->b:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 952
    iget-object v0, p0, Lcn/domob/android/b/b$a;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 953
    invoke-static {}, Lcn/domob/android/b/b;->h()Lcn/domob/android/ads/c/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This location is obtained via "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 954
    if-eqz v0, :cond_2

    .line 955
    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 956
    const/4 v0, 0x1

    .line 964
    :goto_0
    return v0

    .line 957
    :cond_0
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 958
    const/4 v0, 0x0

    goto :goto_0

    .line 959
    :cond_1
    const-string v1, "passive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 960
    const/4 v0, 0x2

    goto :goto_0

    .line 964
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method static synthetic c(Lcn/domob/android/b/b$a;)I
    .locals 1

    .prologue
    .line 730
    invoke-direct {p0}, Lcn/domob/android/b/b$a;->e()I

    move-result v0

    return v0
.end method

.method private d()I
    .locals 4

    .prologue
    .line 974
    iget-object v0, p0, Lcn/domob/android/b/b$a;->b:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 975
    const/4 v0, 0x0

    .line 979
    :goto_0
    invoke-static {}, Lcn/domob/android/b/b;->h()Lcn/domob/android/ads/c/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location accuracy is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " meters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 980
    return v0

    .line 977
    :cond_0
    iget-object v0, p0, Lcn/domob/android/b/b$a;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method static synthetic d(Lcn/domob/android/b/b$a;)J
    .locals 2

    .prologue
    .line 730
    invoke-direct {p0}, Lcn/domob/android/b/b$a;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method private e()I
    .locals 2

    .prologue
    .line 984
    iget v0, p0, Lcn/domob/android/b/b$a;->c:I

    packed-switch v0, :pswitch_data_0

    .line 997
    :goto_0
    iget v0, p0, Lcn/domob/android/b/b$a;->c:I

    return v0

    .line 986
    :pswitch_0
    invoke-static {}, Lcn/domob/android/b/b;->h()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Location can not be obtained due to USER_CLOSE"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 989
    :pswitch_1
    invoke-static {}, Lcn/domob/android/b/b;->h()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Location can not be obtained due to NO_PERSSION"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :pswitch_2
    invoke-static {}, Lcn/domob/android/b/b;->h()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Location can not be obtained due to NO_AVAILABLE_LOCATION"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 984
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private f()J
    .locals 14

    .prologue
    const-wide/16 v12, 0x3c

    .line 1001
    iget-object v0, p0, Lcn/domob/android/b/b$a;->b:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcn/domob/android/b/b$a;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 1003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1004
    invoke-static {}, Lcn/domob/android/b/b;->h()Lcn/domob/android/ads/c/f;

    move-result-object v4

    const-class v5, Lcn/domob/android/b/b;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "The location is %s minutes %s seconds ago acquired"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    div-long v10, v2, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    rem-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
