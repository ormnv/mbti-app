Fi = CognitiveFunction.create!(
  symbol: 'Fi',
  direction: 'i',
  action: 'f'
)

Fe = CognitiveFunction.create!(
  symbol: 'Fe',
  direction: 'e',
  action: 'f'
)

Si = CognitiveFunction.create!(
  symbol: 'Si',
  direction: 'i',
  action: 's'
)

Se = CognitiveFunction.create!(
  symbol: 'Se',
  direction: 'e',
  action: 's'
)

Ti = CognitiveFunction.create!(
  symbol: 'Ti',
  direction: 'i',
  action: 't'
)

Te = CognitiveFunction.create!(
  symbol: 'Te',
  direction: 'e',
  action: 't'
)


Ni = CognitiveFunction.create!(
  symbol: 'Ni',
  direction: 'i',
  action: 'i'
)

Ne = CognitiveFunction.create!(
  symbol: 'Ne',
  direction: 'e',
  action: 'i'
)

Personality.create!(
  [
    {
      name: 'INTJ',
      primary_function_symbol: Ni.symbol,
      secondary_function_symbol: Te.symbol,
      tertiary_function_symbol: Fi.symbol,
      inferior_function_symbol: Se.symbol,
      tagline: "Architect",
      description: 'Imaginative and strategic thinkers, with a plan for everything.'
    },
    {
      name: 'INTP',
      primary_function_symbol: Ti.symbol,
      secondary_function_symbol: Ne.symbol,
      tertiary_function_symbol: Si.symbol,
      inferior_function_symbol: Fe.symbol,
      tagline: "Logician",
      description: 'Innovative inventors with an unquenchable thirst for knowledge.'
    },
    {
      name: 'ENTJ',
      primary_function_symbol: Te.symbol,
      secondary_function_symbol: Ni.symbol,
      tertiary_function_symbol: Se.symbol,
      inferior_function_symbol: Fi.symbol,
      tagline: "Commander",
      description: 'Bold, imaginative and strong-willed leaders, always finding a way – or making one.'
    },
    {
      name: 'ENTP',
      primary_function_symbol: Ne.symbol,
      secondary_function_symbol: Ti.symbol,
      tertiary_function_symbol: Fe.symbol,
      inferior_function_symbol: Si.symbol,
      tagline: "Debater",
      description: 'Smart and curious thinkers who cannot resist an intellectual challenge.'
    },
    {
      name: 'INFJ',
      primary_function_symbol: Ni.symbol,
      secondary_function_symbol: Fe.symbol,
      tertiary_function_symbol: Ti.symbol,
      inferior_function_symbol: Se.symbol,
      tagline: "Advocate",
      description: 'Quiet and mystical, yet very inspiring and tireless idealists.'
    },
    {
      name: 'INFP',
      primary_function_symbol: Fi.symbol,
      secondary_function_symbol: Ne.symbol,
      tertiary_function_symbol: Si.symbol,
      inferior_function_symbol: Te.symbol,
      tagline: "Mediator",
      description: 'Poetic, kind and altruistic people, always eager to help a good cause.'
    },
    {
      name: 'ENFJ',
      primary_function_symbol: Fe.symbol,
      secondary_function_symbol: Ni.symbol,
      tertiary_function_symbol: Se.symbol,
      inferior_function_symbol: Ti.symbol,
      tagline: "Protagonist",
      description: 'Charismatic and inspiring leaders, able to mesmerize their listeners.'
    },
    {
      name: 'ENFP',
      primary_function_symbol: Ni.symbol,
      secondary_function_symbol: Fe.symbol,
      tertiary_function_symbol: Ti.symbol,
      inferior_function_symbol: Se.symbol,
      tagline: "Campaigner",
      description: 'Enthusiastic, creative and sociable free spirits, who can always find a reason to smile.'
    },
    {
      name: 'ISTJ',
      primary_function_symbol: Si.symbol,
      secondary_function_symbol: Te.symbol,
      tertiary_function_symbol: Fi.symbol,
      inferior_function_symbol: Ne.symbol,
      tagline: "Logistician",
      description: 'Practical and fact-minded individuals, whose reliability cannot be doubted.'
    },
    {
      name: 'ISFJ',
      primary_function_symbol: Si.symbol,
      secondary_function_symbol: Fe.symbol,
      tertiary_function_symbol: Ti.symbol,
      inferior_function_symbol: Ne.symbol,
      tagline: "Defender",
      description: 'Very dedicated and warm protectors, always ready to defend their loved ones.'
    },
    {
      name: 'ESTJ',
      primary_function_symbol: Te.symbol,
      secondary_function_symbol: Si.symbol,
      tertiary_function_symbol: Ne.symbol,
      inferior_function_symbol: Fi.symbol,
      tagline: "Executive",
      description: 'Excellent administrators, unsurpassed at managing things – or people.'
    },
    {
      name: 'ESFJ',
      primary_function_symbol: Fe.symbol,
      secondary_function_symbol: Si.symbol,
      tertiary_function_symbol: Ne.symbol,
      inferior_function_symbol: Ti.symbol,
      tagline: "Consul",
      description: 'Extraordinarily caring, social and popular people, always eager to help.'
    },
    {
      name: 'ISTP',
      primary_function_symbol: Ti.symbol,
      secondary_function_symbol: Se.symbol,
      tertiary_function_symbol: Ni.symbol,
      inferior_function_symbol: Fe.symbol,
      tagline: "Virtuoso",
      description: 'Bold and practical experimenters, masters of all kinds of tools.'
    },
    {
      name: 'ISFP',
      primary_function_symbol: Fi.symbol,
      secondary_function_symbol: Se.symbol,
      tertiary_function_symbol: Ni.symbol,
      inferior_function_symbol: Te.symbol,
      tagline: "Adventurer",
      description: 'Flexible and charming artists, always ready to explore and experience something new.'
    },
    {
      name: 'ESTP',
      primary_function_symbol: Se.symbol,
      secondary_function_symbol: Ti.symbol,
      tertiary_function_symbol: Fe.symbol,
      inferior_function_symbol: Ni.symbol,
      tagline: "Entrepreneur",
      description: 'Smart, energetic and very perceptive people, who truly enjoy living on the edge.'
    },
    {
      name: 'ESFP',
      primary_function_symbol: Se.symbol,
      secondary_function_symbol: Fi.symbol,
      tertiary_function_symbol: Te.symbol,
      inferior_function_symbol: Ni.symbol,
      tagline: "Entertainer",
      description: 'Spontaneous, energetic and enthusiastic people – life is never boring around them.'
    }
  ]
)

User.create!(
  [
    {
      email: 'olga@olga.com',
      first_name: 'Olga',
      last_name: 'Romanova'
    },
    {
      email: 'carljung@mbti.com',
      first_name: 'Carl',
      last_name: 'Jung'
    },
    {
      email: 'sigmundfreud@mbti.com',
      first_name: 'Sigmund',
      last_name: 'Freud'
    },
    {
      email: 'emmajung@mbti.com',
      first_name: 'Emma',
      last_name: 'Jung'
    },
    {
      email: 'sabrinaspielrein@mbti.com',
      first_name: 'Sabrina',
      last_name: 'Spielrein'
    },
    {
      email: 'hermannhesse@mbti.com',
      first_name: 'Hermann',
      last_name: 'Hesse'
    },
    {
      email: 'aldoushuxley@mbti.com',      
      first_name: 'Aldous',
      last_name: 'Huxley'
    }
  ]
)

PeerSet.create!(
  [
    {
      first_user_id: 2,
      second_user_id: 3,
      first_user_confirmation: true,
      second_user_confirmation: true
    },
    {
      first_user_id: 2,
      second_user_id: 6,
      first_user_confirmation: true,
      second_user_confirmation: true
    },
    {
      first_user_id: 4,
      second_user_id: 5,
      first_user_confirmation: true,
      second_user_confirmation: true
    }
  ]
)