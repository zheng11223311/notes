.class Lcn/com/mma/mobile/tracking/api/ConnectionQueue;
.super Ljava/lang/Object;
.source "Countly.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;,
        Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;
    }
.end annotation


# instance fields
.field private appKey_:Ljava/lang/String;

.field private context_:Landroid/content/Context;

.field private exposeUrlList:Landroid/content/SharedPreferences;

.field private exposeUrlListForError:Landroid/content/SharedPreferences;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverClickURL_:Ljava/lang/String;

.field private serverExposeURL_:Ljava/lang/String;

.field private threadForError_:Ljava/lang/Thread;

.field private thread_:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->thread_:Ljava/lang/Thread;

    .line 487
    iput-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->threadForError_:Ljava/lang/Thread;

    .line 495
    return-void
.end method

.method static synthetic access$000(Lcn/com/mma/mobile/tracking/api/ConnectionQueue;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    .prologue
    .line 472
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->context_:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/mma/mobile/tracking/api/ConnectionQueue;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    .prologue
    .line 472
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->exposeUrlListForError:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/mma/mobile/tracking/api/ConnectionQueue;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    .prologue
    .line 472
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->exposeUrlList:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private getData(Landroid/content/SharedPreferences;)Ljava/util/Map;
    .locals 2
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 692
    .local v0, "keys":Ljava/util/Map;
    monitor-enter p1

    .line 693
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 694
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 695
    monitor-exit p1

    .line 697
    return-object v0

    .line 695
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 520
    move-object v3, p0

    .line 521
    .local v3, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 524
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 525
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 526
    new-instance v1, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 527
    .local v1, "hash":Ljava/math/BigInteger;
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 528
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-ge v4, v5, :cond_0

    .line 529
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 531
    .end local v1    # "hash":Ljava/math/BigInteger;
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 536
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    return-object v3
.end method

.method private nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 562
    if-nez p1, :cond_0

    :try_start_0
    const-string v1, ""

    .line 564
    :goto_0
    return-object v1

    .line 562
    :cond_0
    const-string v1, "utf-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    goto :goto_0
.end method

.method private nullToEmpty(Ljava/lang/String;Lcn/com/mma/mobile/tracking/domain/Argument;Lcn/com/mma/mobile/tracking/domain/Company;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "argument"    # Lcn/com/mma/mobile/tracking/domain/Argument;
    .param p3, "company"    # Lcn/com/mma/mobile/tracking/domain/Company;

    .prologue
    .line 542
    :try_start_0
    iget-object v1, p3, Lcn/com/mma/mobile/tracking/domain/Company;->sswitch:Lcn/com/mma/mobile/tracking/domain/Switch;

    iget-object v1, v1, Lcn/com/mma/mobile/tracking/domain/Switch;->encrypt:Ljava/util/Map;

    iget-object v2, p2, Lcn/com/mma/mobile/tracking/domain/Argument;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 543
    const-string v1, "md5"

    iget-object v2, p3, Lcn/com/mma/mobile/tracking/domain/Company;->sswitch:Lcn/com/mma/mobile/tracking/domain/Switch;

    iget-object v2, v2, Lcn/com/mma/mobile/tracking/domain/Switch;->encrypt:Ljava/util/Map;

    iget-object v3, p2, Lcn/com/mma/mobile/tracking/domain/Argument;->key:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    const-string v1, "MAC"

    iget-object v2, p2, Lcn/com/mma/mobile/tracking/domain/Argument;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    if-nez p1, :cond_2

    const-string p1, ""

    .line 547
    :cond_0
    :goto_0
    if-nez p1, :cond_3

    const-string p1, ""

    .line 550
    :cond_1
    :goto_1
    iget-boolean v1, p2, Lcn/com/mma/mobile/tracking/domain/Argument;->urlEncode:Z

    if-nez v1, :cond_5

    .line 551
    if-nez p1, :cond_4

    const-string v1, ""

    .line 555
    :goto_2
    return-object v1

    .line 545
    :cond_2
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 547
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object v1, p1

    .line 551
    goto :goto_2

    .line 553
    :cond_5
    if-nez p1, :cond_6

    const-string v1, ""

    goto :goto_2

    :cond_6
    const-string v1, "utf-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    goto :goto_2
.end method

.method private tickThread(Landroid/content/SharedPreferences;Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;)V
    .locals 2
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "errorHanlder"    # Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;

    .prologue
    .line 823
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->thread_:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->thread_:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->thread_:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;

    invoke-direct {v1, p0, p1, p2}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;-><init>(Lcn/com/mma/mobile/tracking/api/ConnectionQueue;Landroid/content/SharedPreferences;Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->thread_:Ljava/lang/Thread;

    .line 829
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->thread_:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private tickThreadForError(Landroid/content/SharedPreferences;Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;)V
    .locals 2
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "errorHanlder"    # Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;

    .prologue
    .line 833
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->threadForError_:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->threadForError_:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->threadForError_:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 840
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;

    invoke-direct {v1, p0, p1, p2}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;-><init>(Lcn/com/mma/mobile/tracking/api/ConnectionQueue;Landroid/content/SharedPreferences;Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->threadForError_:Ljava/lang/Thread;

    .line 841
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->threadForError_:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->thread_:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->thread_:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->thread_:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 671
    :cond_0
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->threadForError_:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->threadForError_:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->threadForError_:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 673
    :cond_1
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->exposeUrlList:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 674
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->exposeUrlList:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 675
    :cond_2
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->exposeUrlListForError:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    .line 676
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->exposeUrlListForError:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 678
    :cond_3
    return-void
.end method

.method public clearErrorList()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->exposeUrlListForError:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->exposeUrlListForError:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 684
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->context_:Landroid/content/Context;

    return-object v0
.end method

.method public recordEvents(Lcn/com/mma/mobile/tracking/api/SendEvent;)V
    .locals 28
    .param p1, "sendEvent"    # Lcn/com/mma/mobile/tracking/api/SendEvent;

    .prologue
    .line 569
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .local v6, "data":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/SendEvent;->url:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcn/com/mma/mobile/tracking/CommonUtil;->getHostURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 571
    .local v10, "hostURL":Ljava/lang/String;
    sget-boolean v22, Lcn/com/mma/mobile/tracking/api/Countly;->LOG:Z

    if-eqz v22, :cond_0

    const-string v22, "cn/com/mma/mobile/tracking/api/Countly"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "##hostURL: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcn/com/mma/mobile/tracking/api/Countly;->getSdk()Lcn/com/mma/mobile/tracking/domain/SDK;

    move-result-object v22

    if-eqz v22, :cond_1d

    .line 573
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcn/com/mma/mobile/tracking/api/Countly;->getSdk()Lcn/com/mma/mobile/tracking/domain/SDK;

    move-result-object v18

    .line 574
    .local v18, "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/domain/SDK;->companies:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/com/mma/mobile/tracking/domain/Company;

    .line 575
    .local v5, "company":Lcn/com/mma/mobile/tracking/domain/Company;
    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->domain:Lcn/com/mma/mobile/tracking/domain/Domain;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/domain/Domain;->url:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 576
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v16, "requiredArgmentValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v19, ""

    .line 578
    .local v19, "separator":Ljava/lang/String;
    const-string v8, ""

    .line 579
    .local v8, "equalizer":Ljava/lang/String;
    const-string v14, ""

    .line 580
    .local v14, "redirectURLValue":Ljava/lang/String;
    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->config:Lcn/com/mma/mobile/tracking/domain/Config;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/domain/Config;->arguments:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/com/mma/mobile/tracking/domain/Argument;

    .line 581
    .local v4, "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    iget-boolean v0, v4, Lcn/com/mma/mobile/tracking/domain/Argument;->isRequired:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 582
    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->separator:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 583
    iget-object v8, v5, Lcn/com/mma/mobile/tracking/domain/Company;->equalizer:Ljava/lang/String;

    .line 584
    iget-object v0, v4, Lcn/com/mma/mobile/tracking/domain/Argument;->value:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    const-string v22, "REDIRECTURL"

    iget-object v0, v4, Lcn/com/mma/mobile/tracking/domain/Argument;->key:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 586
    iget-object v14, v4, Lcn/com/mma/mobile/tracking/domain/Argument;->value:Ljava/lang/String;

    goto :goto_1

    .line 590
    .end local v4    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/SendEvent;->url:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v8, v14}, Lcn/com/mma/mobile/tracking/CommonUtil;->removeExistArgmentAndGetRedirectURL(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    .line 591
    .local v15, "removedExistArgmentAndGetRedirectURL":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 592
    .local v13, "redirectURL":Ljava/lang/String;
    const-string v22, "REDIRECTURL"

    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 593
    const-string v22, "REDIRECTURL"

    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "redirectURL":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 595
    .restart local v13    # "redirectURL":Ljava/lang/String;
    :cond_4
    const-string v22, "URL"

    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 596
    .local v20, "url":Ljava/lang/String;
    sget-boolean v22, Lcn/com/mma/mobile/tracking/api/Countly;->LOG:Z

    if-eqz v22, :cond_5

    const-string v22, "cn/com/mma/mobile/tracking/api/Countly"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "##redirectURL "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_5
    sget-boolean v22, Lcn/com/mma/mobile/tracking/api/Countly;->LOG:Z

    if-eqz v22, :cond_6

    const-string v22, "cn/com/mma/mobile/tracking/api/Countly"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "##urlWithoutArguement "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_6
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    const-string v21, ""

    .line 600
    .local v21, "valueAndRedirectURL":Ljava/lang/String;
    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->config:Lcn/com/mma/mobile/tracking/domain/Config;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/domain/Config;->arguments:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/com/mma/mobile/tracking/domain/Argument;

    .line 601
    .restart local v4    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    iget-boolean v0, v4, Lcn/com/mma/mobile/tracking/domain/Argument;->isRequired:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 602
    const-string v22, "TS"

    iget-object v0, v4, Lcn/com/mma/mobile/tracking/domain/Argument;->key:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 603
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->separator:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Lcn/com/mma/mobile/tracking/domain/Argument;->value:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->equalizer:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->equalizer:Ljava/lang/String;

    move-object/from16 v22, v0

    :goto_3
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-boolean v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->timeStampUseSecond:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    new-instance v22, Ljava/math/BigDecimal;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcn/com/mma/mobile/tracking/api/SendEvent;->timestamp:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual/range {v22 .. v22}, Ljava/math/BigDecimal;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    :goto_4
    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const-string v22, ""

    goto :goto_3

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcn/com/mma/mobile/tracking/api/SendEvent;->getTimestamp()J

    move-result-wide v22

    goto :goto_4

    .line 604
    :cond_a
    const-string v22, "MUDS"

    iget-object v0, v4, Lcn/com/mma/mobile/tracking/domain/Argument;->key:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 605
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->separator:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Lcn/com/mma/mobile/tracking/domain/Argument;->value:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->equalizer:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->equalizer:Ljava/lang/String;

    move-object/from16 v22, v0

    :goto_5
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/SendEvent;->muds:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->nullToEmpty(Ljava/lang/String;Lcn/com/mma/mobile/tracking/domain/Argument;Lcn/com/mma/mobile/tracking/domain/Company;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_b
    const-string v22, ""

    goto :goto_5

    .line 606
    :cond_c
    const-string v22, "REDIRECTURL"

    iget-object v0, v4, Lcn/com/mma/mobile/tracking/domain/Argument;->key:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 607
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->separator:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Lcn/com/mma/mobile/tracking/domain/Argument;->value:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->equalizer:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->equalizer:Ljava/lang/String;

    move-object/from16 v22, v0

    :goto_6
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v5}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->nullToEmpty(Ljava/lang/String;Lcn/com/mma/mobile/tracking/domain/Argument;Lcn/com/mma/mobile/tracking/domain/Company;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    :cond_d
    const-string v22, ""

    goto :goto_6

    .line 613
    :cond_e
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->separator:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Lcn/com/mma/mobile/tracking/domain/Argument;->value:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->equalizer:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->equalizer:Ljava/lang/String;

    move-object/from16 v22, v0

    :goto_7
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->params:Ljava/util/Map;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcn/com/mma/mobile/tracking/domain/Argument;->key:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4, v5}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->nullToEmpty(Ljava/lang/String;Lcn/com/mma/mobile/tracking/domain/Argument;Lcn/com/mma/mobile/tracking/domain/Company;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_f
    const-string v22, ""

    goto :goto_7

    .line 617
    .end local v4    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    :cond_10
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v17, "requiredEventValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->config:Lcn/com/mma/mobile/tracking/domain/Config;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/domain/Config;->events:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_11
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/com/mma/mobile/tracking/domain/Event;

    .line 619
    .local v9, "event":Lcn/com/mma/mobile/tracking/domain/Event;
    invoke-virtual/range {p1 .. p1}, Lcn/com/mma/mobile/tracking/api/SendEvent;->getEventName()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcn/com/mma/mobile/tracking/api/SendEvent;->getEventName()Ljava/lang/String;

    move-result-object v22

    iget-object v0, v9, Lcn/com/mma/mobile/tracking/domain/Event;->key:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 620
    iget-object v0, v9, Lcn/com/mma/mobile/tracking/domain/Event;->value:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 623
    .end local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    :cond_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v8}, Lcn/com/mma/mobile/tracking/CommonUtil;->removeExistEvent(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 624
    .end local v6    # "data":Ljava/lang/StringBuilder;
    .local v7, "data":Ljava/lang/StringBuilder;
    sget-boolean v22, Lcn/com/mma/mobile/tracking/api/Countly;->LOG:Z

    if-eqz v22, :cond_13

    const-string v22, "cn/com/mma/mobile/tracking/api/Countly"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "##urlWithoutEvent "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_13
    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->config:Lcn/com/mma/mobile/tracking/domain/Config;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/domain/Config;->events:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_14
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/com/mma/mobile/tracking/domain/Event;

    .line 626
    .restart local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    invoke-virtual/range {p1 .. p1}, Lcn/com/mma/mobile/tracking/api/SendEvent;->getEventName()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcn/com/mma/mobile/tracking/api/SendEvent;->getEventName()Ljava/lang/String;

    move-result-object v22

    iget-object v0, v9, Lcn/com/mma/mobile/tracking/domain/Event;->key:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 627
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->separator:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v9, Lcn/com/mma/mobile/tracking/domain/Event;->value:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 631
    .end local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    :cond_15
    sget-boolean v22, Lcn/com/mma/mobile/tracking/api/Countly;->LOG:Z

    if-eqz v22, :cond_16

    const-string v22, "cn/com/mma/mobile/tracking/api/Countly"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "##\u672a\u7ecf\u8fc7\u7b7e\u540d\u6a21\u5757\u7684url "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_16
    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->signature:Lcn/com/mma/mobile/tracking/domain/Signature;

    move-object/from16 v22, v0

    if-eqz v22, :cond_17

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->signature:Lcn/com/mma/mobile/tracking/domain/Signature;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/domain/Signature;->publicKey:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_17

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->signature:Lcn/com/mma/mobile/tracking/domain/Signature;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/domain/Signature;->paramKey:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_17

    .line 633
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->separator:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->signature:Lcn/com/mma/mobile/tracking/domain/Signature;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/domain/Signature;->paramKey:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->equalizer:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_19

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->equalizer:Ljava/lang/String;

    move-object/from16 v22, v0

    :goto_a
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->context_:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcn/com/admaster/signature/Signaturer;->getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    :cond_17
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "isEmulator"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 640
    sget-boolean v22, Lcn/com/mma/mobile/tracking/api/Countly;->LOG:Z

    if-eqz v22, :cond_18

    const-string v22, "cn/com/mma/mobile/tracking/api/Countly"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "##\u6211\u662f\u865a\u5047\u7684 "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move-object v6, v7

    .line 657
    .end local v5    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .end local v7    # "data":Ljava/lang/StringBuilder;
    .end local v8    # "equalizer":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "redirectURL":Ljava/lang/String;
    .end local v14    # "redirectURLValue":Ljava/lang/String;
    .end local v15    # "removedExistArgmentAndGetRedirectURL":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "requiredArgmentValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "requiredEventValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .end local v19    # "separator":Ljava/lang/String;
    .end local v20    # "url":Ljava/lang/String;
    .end local v21    # "valueAndRedirectURL":Ljava/lang/String;
    .restart local v6    # "data":Ljava/lang/StringBuilder;
    :goto_b
    return-void

    .line 633
    .end local v6    # "data":Ljava/lang/StringBuilder;
    .restart local v5    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .restart local v7    # "data":Ljava/lang/StringBuilder;
    .restart local v8    # "equalizer":Ljava/lang/String;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "redirectURL":Ljava/lang/String;
    .restart local v14    # "redirectURLValue":Ljava/lang/String;
    .restart local v15    # "removedExistArgmentAndGetRedirectURL":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "requiredArgmentValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "requiredEventValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v19    # "separator":Ljava/lang/String;
    .restart local v20    # "url":Ljava/lang/String;
    .restart local v21    # "valueAndRedirectURL":Ljava/lang/String;
    :cond_19
    const-string v22, ""

    goto :goto_a

    .line 643
    :cond_1a
    sget-boolean v22, Lcn/com/mma/mobile/tracking/api/Countly;->LOG:Z

    if-eqz v22, :cond_1b

    const-string v22, "cn/com/mma/mobile/tracking/api/Countly"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "##url "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_1b
    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->sswitch:Lcn/com/mma/mobile/tracking/domain/Switch;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/domain/Switch;->offlineCacheExpiration:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1c

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->exposeUrlList:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    iget-object v0, v5, Lcn/com/mma/mobile/tracking/domain/Company;->sswitch:Lcn/com/mma/mobile/tracking/domain/Switch;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/domain/Switch;->offlineCacheExpiration:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    invoke-virtual/range {p1 .. p1}, Lcn/com/mma/mobile/tracking/api/SendEvent;->getTimestamp()J

    move-result-wide v26

    add-long v24, v24, v26

    invoke-interface/range {v22 .. v25}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v6, v7

    .end local v7    # "data":Ljava/lang/StringBuilder;
    .restart local v6    # "data":Ljava/lang/StringBuilder;
    goto/16 :goto_0

    .line 647
    .end local v6    # "data":Ljava/lang/StringBuilder;
    .restart local v7    # "data":Ljava/lang/StringBuilder;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->exposeUrlList:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-wide/32 v24, 0x5265c00

    invoke-virtual/range {p1 .. p1}, Lcn/com/mma/mobile/tracking/api/SendEvent;->getTimestamp()J

    move-result-wide v26

    add-long v24, v24, v26

    invoke-interface/range {v22 .. v25}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v6, v7

    .end local v7    # "data":Ljava/lang/StringBuilder;
    .restart local v6    # "data":Ljava/lang/StringBuilder;
    goto/16 :goto_0

    .line 655
    .end local v5    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .end local v8    # "equalizer":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "redirectURL":Ljava/lang/String;
    .end local v14    # "redirectURLValue":Ljava/lang/String;
    .end local v15    # "removedExistArgmentAndGetRedirectURL":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "requiredArgmentValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "requiredEventValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .end local v19    # "separator":Ljava/lang/String;
    .end local v20    # "url":Ljava/lang/String;
    .end local v21    # "valueAndRedirectURL":Ljava/lang/String;
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->tick()V

    goto/16 :goto_b
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 498
    iput-object p1, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->appKey_:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 502
    iput-object p1, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->context_:Landroid/content/Context;

    .line 503
    return-void
.end method

.method public setExposeUrlList(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tracking.exposeUrlList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->exposeUrlList:Landroid/content/SharedPreferences;

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tracking.exposeUrlListForError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->exposeUrlListForError:Landroid/content/SharedPreferences;

    .line 478
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 845
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->params:Ljava/util/Map;

    .line 846
    return-void
.end method

.method public setServerClickURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverURL"    # Ljava/lang/String;

    .prologue
    .line 509
    iput-object p1, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->serverClickURL_:Ljava/lang/String;

    .line 510
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->thread_:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->thread_:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->thread_:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 663
    :cond_0
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->threadForError_:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->threadForError_:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->threadForError_:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 666
    :cond_1
    return-void
.end method

.method public tick()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    :goto_0
    return-void

    .line 808
    :cond_0
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->exposeUrlList:Landroid/content/SharedPreferences;

    new-instance v1, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$1;

    invoke-direct {v1, p0}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$1;-><init>(Lcn/com/mma/mobile/tracking/api/ConnectionQueue;)V

    invoke-direct {p0, v0, v1}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->tickThread(Landroid/content/SharedPreferences;Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;)V

    .line 819
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->exposeUrlListForError:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->tickThreadForError(Landroid/content/SharedPreferences;Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;)V

    goto :goto_0
.end method

.method public updateLocation(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 513
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->getLocation(Landroid/content/Context;Z)Ljava/lang/String;

    .line 514
    return-void
.end method
